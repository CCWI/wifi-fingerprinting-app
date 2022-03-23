import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/access_point_dto.dart';
import '../i_access_point_data_source.dart';

@LazySingleton(as: IAccessPointDataSource, env: [Environment.prod, Environment.dev])
class AccessPointFirestoreDataSource implements IAccessPointDataSource {
  final CollectionReference apCollection =
      FirebaseFirestore.instance.collection(Constants.access_points);
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);

  Map<String, dynamic> dtoToMap(AccessPointDto item,
      [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<AccessPointDto>> watchAllFromProject(String projectId) async* {
    yield* apCollection
        .where('projectId', isEqualTo: projectId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => AccessPointDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<AccessPointDto>> readAllFromProject(String projectId) async {
    return await apCollection
        .where('projectId', isEqualTo: projectId)
        .get()
        .then((snapshot) => snapshot.docs
            .map((doc) => AccessPointDto.fromFirestore(doc))
            .toImmutableList())
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(AccessPointDto accessPoint) async {
    final accessPointDto = dtoToMap(accessPoint);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(apCollection.doc(accessPoint.projectId));
      final projectDoc =
          await tx.get(pCollection.doc(accessPoint.projectId));
      //write operations
      await tx.set(newDoc.reference, accessPointDto);
      await _updateProject(
        projectDoc: projectDoc,
        transaction: tx,
      );
    };

    return FirebaseFirestore.instance
        .runTransaction(createTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future addNotExistingOnes(KtList<AccessPointDto> accessPoints) async {
    final projectId = accessPoints.first()?.projectId;

    final TransactionHandler createNotExistingOnes = (Transaction tx) async {
      //read operations and filtering
      final existingAccessPoints = await readAllFromProject(projectId);
      final existingAccessPointBSSIDs =
          existingAccessPoints.map((accessPoint) => accessPoint.bssid);

      final notExistingAccessPoints = accessPoints.filter((accessPoint) =>
          !existingAccessPointBSSIDs.contains(accessPoint.bssid));

      final KtMutableList<DocumentSnapshot> docsToBeCreated =
          KtMutableList.empty();
      final projectDoc = await tx.get(pCollection.doc(projectId));

      await Future.forEach(notExistingAccessPoints.iter,
          (AccessPointDto accessPoint) async {
        docsToBeCreated
            .add(await tx.get(apCollection.doc(accessPoint.id)));
      });
      //write operations
      int index = 0;
      await Future.forEach(notExistingAccessPoints.iter,
          (AccessPointDto accessPoint) async {
        final accessPointMap = dtoToMap(accessPoint);
        await tx.set(docsToBeCreated[index].reference, accessPointMap);
        await _updateProject(
          projectDoc: projectDoc,
          transaction: tx,
        );
        index++;
      });
    };

    return (await _hasNotExistingAccessPoints(accessPoints))
        ? FirebaseFirestore.instance
            .runTransaction(createNotExistingOnes)
            .timeout(const Duration(seconds:  60))
            .catchError((e) => throw DataSourceException(exception: e))
        : Unit;
  }

  @override
  Future<AccessPointDto> read(String id) async {
    return await apCollection
        .doc(id)
        .get()
        .then((doc) => AccessPointDto.fromFirestore(doc))
        .catchError(
          (e) => DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(AccessPointDto accessPoint) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate = await tx.get(apCollection.doc(accessPoint.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(accessPoint));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(apCollection.doc(id));
      final projectDoc = await _getProjectDoc(docToDelete, tx);
      //write operations
      await tx.delete(docToDelete.reference);
      await _updateProject(
        projectDoc: projectDoc,
        transaction: tx,
      );
    };

    return FirebaseFirestore.instance
        .runTransaction(deleteTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  Future<DocumentSnapshot> _getProjectDoc(
      DocumentSnapshot docToDelete, Transaction transaction) async {
    final projectId = docToDelete.data()['projectId'] as String;
    return await transaction.get(pCollection.doc(projectId));
  }

  Future _updateProject({
    @required DocumentSnapshot projectDoc,
    @required Transaction transaction,
    bool isDeletion = false,
  }) async {
    return await transaction.update(projectDoc.reference, {
      Constants.registeredAccessPoints:
          !isDeletion ? FieldValue.increment(1) : FieldValue.increment(-1)
    });
  }

  Future<bool> _hasNotExistingAccessPoints(
      KtList<AccessPointDto> accessPoints) async {
    final existingAccessPoints =
        await readAllFromProject(accessPoints?.get(0)?.projectId);
    final existingAccessPointBSSIDs =
        existingAccessPoints.map((accessPoint) => accessPoint.bssid);

    final notExistingAccessPoints = accessPoints.filter((accessPoint) =>
        !existingAccessPointBSSIDs.contains(accessPoint.bssid));

    return notExistingAccessPoints.size > 0;
  }
}

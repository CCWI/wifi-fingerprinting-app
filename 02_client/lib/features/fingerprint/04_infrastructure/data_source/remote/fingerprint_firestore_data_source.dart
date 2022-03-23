import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/fingerprint_dto.dart';
import '../i_fingerprint_data_source.dart';

@LazySingleton(
    as: IFingerprintDataSource, env: [Environment.prod, Environment.dev])
class FingerprintFirestoreDataSource implements IFingerprintDataSource {
  final CollectionReference fCollection =
      FirebaseFirestore.instance.collection(Constants.fingerprints);
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);

  Map<String, dynamic> dtoToMap(FingerprintDto item,
      [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<FingerprintDto>> watchAllFromProject(String projectId) async* {
    yield* fCollection
        .where('projectId', isEqualTo: projectId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => FingerprintDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(FingerprintDto fingerprint) async {
    final fingerprintData = dtoToMap(fingerprint);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(fCollection.doc(fingerprint.id));
      final projectDoc = await tx.get(pCollection.doc(fingerprint.projectId));
      //write operations
      await tx.set(newDoc.reference, fingerprintData);
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
  Future<FingerprintDto> read(String id) async {
    return await fCollection
        .doc(id)
        .get()
        .then((doc) => FingerprintDto.fromFirestore(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<List<FingerprintDto>> readAllFingerprints() async {
    return await fCollection
        .get()
        .then((snapshot) => snapshot.docs
            .map((doc) => FingerprintDto.fromFirestore(doc))
            .toList())
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(FingerprintDto fingerprint) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate = await tx.get(fCollection.doc(fingerprint.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(fingerprint));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(fCollection.doc(id));
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
      Constants.registeredFingerprints:
          !isDeletion ? FieldValue.increment(1) : FieldValue.increment(-1)
    });
  }
}

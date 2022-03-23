import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/cell_dto.dart';
import '../i_cell_data_source.dart';

@LazySingleton(as: ICellDataSource, env: [Environment.prod, Environment.dev])
class CellFirestoreDataSource implements ICellDataSource {
  final CollectionReference cCollection =
      FirebaseFirestore.instance.collection(Constants.cells);
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);

  Map<String, dynamic> dtoToMap(CellDto item, [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<CellDto>> watchAllFromProject(String projectId) async* {
    yield* cCollection
        .where('projectId', isEqualTo: projectId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CellDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<CellDto>> readAllFromProject(String projectId) async {
    return await cCollection
        .where('projectId', isEqualTo: projectId)
        .get()
        .then((snapshot) => snapshot.docs
            .map((doc) => CellDto.fromFirestore(doc))
            .toImmutableList())
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CellDto cell) async {
    final cellData = dtoToMap(cell);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(cCollection.doc(cell.id));
      final projectDoc = await tx.get(pCollection.doc(cell.projectId));
      //write operations
      await tx.set(newDoc.reference, cellData);
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
  Future<CellDto> read(String id) async {
    return await cCollection
        .doc(id)
        .get()
        .then((doc) => CellDto.fromFirestore(doc))
        .catchError(
          (e) => DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CellDto cell) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate = await tx.get(cCollection.doc(cell.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(cell));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(cCollection.doc(id));
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
      Constants.registeredCells:
          !isDeletion ? FieldValue.increment(1) : FieldValue.increment(-1)
    });
  }
}

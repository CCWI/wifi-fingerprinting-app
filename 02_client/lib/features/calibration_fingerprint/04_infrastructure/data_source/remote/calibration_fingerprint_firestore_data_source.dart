import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/calibration_fingerprint_dto.dart';
import '../i_calibration_fingerprint_data_source.dart';

@LazySingleton(as: ICalibrationFingerprintDataSource, env: [Environment.prod, Environment.dev])
class CalibrationFingerprintFirestoreDataSource
    implements ICalibrationFingerprintDataSource {
  final CollectionReference cfCollection =
      FirebaseFirestore.instance.collection(Constants.calibration_fingerprints);
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);

  Map<String, dynamic> dtoToMap(CalibrationFingerprintDto item,
      [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<CalibrationFingerprintDto>> watchAllFromProject(
      String projectId) async* {
    yield* cfCollection
        .where('projectId', isEqualTo: projectId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CalibrationFingerprintDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Stream<KtList<CalibrationFingerprintDto>> watchAllFromCalibrationPoint(
      String calibrationPointId) async* {
    yield* cfCollection
        .where('calibrationPointId', isEqualTo: calibrationPointId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CalibrationFingerprintDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CalibrationFingerprintDto calibrationFingerprint) async {
    final calibrationFingerprintData = dtoToMap(calibrationFingerprint);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc =
          await tx.get(cfCollection.doc(calibrationFingerprint.id));
      final projectDoc =
          await tx.get(pCollection.doc(calibrationFingerprint.projectId));
      //write operations
      await tx.set(newDoc.reference, calibrationFingerprintData);
      await _updateProject(
        projectDoc: projectDoc,
        transaction: tx,
      );
    };

    return FirebaseFirestore.instance
        .runTransaction(createTransaction)
        .timeout(const Duration(seconds: 60))
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future<CalibrationFingerprintDto> read(String id) async {
    return await cfCollection
        .doc(id)
        .get()
        .then((doc) => CalibrationFingerprintDto.fromFirestore(doc))
        .catchError(
          (e) => DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CalibrationFingerprintDto calibrationFingerprint) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate =
          await tx.get(cfCollection.doc(calibrationFingerprint.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(calibrationFingerprint));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(cfCollection.doc(id));
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
      Constants.registeredCalibrationFingerprints:
          !isDeletion ? FieldValue.increment(1) : FieldValue.increment(-1)
    });
  }
}

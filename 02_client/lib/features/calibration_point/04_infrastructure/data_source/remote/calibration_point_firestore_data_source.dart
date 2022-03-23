import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../../../access_point/04_infrastructure/dtos/access_point_dto.dart';
import '../../../../calibration_fingerprint/04_infrastructure/dtos/calibration_fingerprint_dto.dart';
import '../../dtos/calibration_point_dto.dart';
import '../i_calibration_point_data_source.dart';

@LazySingleton(as: ICalibrationPointDataSource, env: [Environment.prod, Environment.dev])
class CalibrationPointFirestoreDataSource
    implements ICalibrationPointDataSource {
  final CollectionReference cpCollection =
      FirebaseFirestore.instance.collection(Constants.calibration_points);
  final CollectionReference cfCollection =
      FirebaseFirestore.instance.collection(Constants.calibration_fingerprints);
  final CollectionReference apCollection =
      FirebaseFirestore.instance.collection(Constants.access_points);
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);
  KtList<CalibrationPointDto> _tempCalibrationPoints;
  KtList<CalibrationFingerprintDto> _tempCalibrationFingerprints;

  Map<String, dynamic> dtoToMap(CalibrationPointDto item,
      [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<CalibrationPointDto>> watchAllFromProject(
      String projectId) async* {
    yield* cpCollection
        .where('projectId', isEqualTo: projectId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CalibrationPointDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CalibrationPointDto calibrationPoint) async {
    final calibrationPointData = dtoToMap(calibrationPoint, {
      'created': DateTime.now().toUtc().toIso8601String(),
    });

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(cpCollection.doc(calibrationPoint.id));
      final projectDoc =
          await tx.get(pCollection.doc(calibrationPoint.projectId));
      //write operations
      await tx.set(newDoc.reference, calibrationPointData);
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
  Future updateRadioMap(String projectId) async {
    final TransactionHandler updateRadioMapTransaction =
        (Transaction tx) async {
      //read operations
      final accessPointBSSIDs = await _getAccessPointBSSIDs(
        projectId: projectId,
      );

      final calibrationPointDocs = await _getCalibrationPoints(
        projectId: projectId,
      );

      final calibrationFingerprintDocs = await _getCalibrationFingerprints(
        projectId: projectId,
      );
      //data manipulation
      _tempCalibrationPoints = _docsToCalibrationPoints(calibrationPointDocs);
      _tempCalibrationFingerprints =
          _docsToCalibrationFingerprints(calibrationFingerprintDocs);
      _updateCalibrationPoints(
        bssids: accessPointBSSIDs,
      );
      //write operations
      int index = 0;
      await Future.forEach(calibrationPointDocs.iter,
          (DocumentSnapshot doc) async {
        await tx.update(doc.reference, dtoToMap(_tempCalibrationPoints[index]));
        index++;
      });

      index = 0;
      await Future.forEach(calibrationFingerprintDocs.iter,
          (DocumentSnapshot doc) async {
        await tx.update(
            doc.reference, _tempCalibrationFingerprints[index].toJson());
        index++;
      });
    };

    return FirebaseFirestore.instance
        .runTransaction(updateRadioMapTransaction, timeout: const Duration(seconds: 60))
        .timeout(const Duration(seconds: 60))
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future<CalibrationPointDto> read(String id) async {
    return await cpCollection
        .doc(id)
        .get()
        .then((doc) => CalibrationPointDto.fromFirestore(doc))
        .catchError(
          (e) => DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<CalibrationPointDto>> readAllFromProject(
      String projectId) async {
    return await cpCollection
        .where('projectId', isEqualTo: projectId)
        .get()
        .then((snapshot) => snapshot.docs
            .map((doc) => CalibrationPointDto.fromFirestore(doc))
            .toImmutableList())
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CalibrationPointDto calibrationPoint) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate =
          await tx.get(cpCollection.doc(calibrationPoint.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(calibrationPoint));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(cpCollection.doc(id));
      final projectDoc = await _getProjectDoc(docToDelete, tx);
      final relatedDocs = await _getAllRelatedDocuments(id);
      //write operations
      final relatedDocRefs = relatedDocs.map((queryDoc) => queryDoc.reference).toList();

      relatedDocRefs.add(docToDelete.reference);
      relatedDocRefs.forEach((docToBeDeletedReference) {
        tx.delete(docToBeDeletedReference);
      });
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

  Future<KtList<String>> _getAccessPointBSSIDs({
    @required String projectId,
  }) async {
    final accessPointDocuments = await apCollection
        .where('projectId', isEqualTo: projectId)
        .get();

    return accessPointDocuments.docs
        .map((doc) => AccessPointDto.fromFirestore(doc).bssid)
        .kt
        .toList();
  }

  Future<KtList<QueryDocumentSnapshot>> _getCalibrationPoints({
    @required String projectId,
  }) async {
    final calibrationPointDocuments = await cpCollection
        .where('projectId', isEqualTo: projectId)
        .get();

    return calibrationPointDocuments.docs.kt.toList();
  }

  Future<KtList<QueryDocumentSnapshot>> _getCalibrationFingerprints({
    @required String projectId,
  }) async {
    final calibrationFingerprintDocuments = await cfCollection
        .where('projectId', isEqualTo: projectId)
        .get();

    return calibrationFingerprintDocuments.docs.kt.toList();
  }

  Future _updateProject({
    @required DocumentSnapshot projectDoc,
    @required Transaction transaction,
    bool isDeletion = false,
  }) async {
    return await transaction.update(projectDoc.reference, {
      Constants.registeredCalibrationPoints:
          !isDeletion ? FieldValue.increment(1) : FieldValue.increment(-1)
    });
  }

  CalibrationFingerprintDto _updateRadioDetails(
      CalibrationFingerprintDto calibrationFingerprint, KtList<String> bssids) {
    final oldRadioDetails = calibrationFingerprint.receivedSignals;
    final updatedRadioDetails = Map<String, double>();

    bssids.forEach((bssid) {
      if (oldRadioDetails.keys.contains(bssid)) {
        updatedRadioDetails[bssid] = oldRadioDetails[bssid];
      } else {
        updatedRadioDetails[bssid] = RSS.notReceived;
      }
    });

    return calibrationFingerprint.copyWith(
        receivedSignals: updatedRadioDetails);
  }

  CalibrationPointDto _updateRadioMap(CalibrationPointDto calibrationPoint,
      KtList<CalibrationFingerprintDto> calibrationFingerprints) {
    final newRadioMap = Map<String, double>();
    final radioMapDivisor = Map<String, int>();

    if (calibrationFingerprints.size > 0) {
      calibrationFingerprints[0].receivedSignals.forEach((bssid, _) {
        radioMapDivisor[bssid] = calibrationFingerprints.size;
      });

      calibrationFingerprints.forEach((calibrationFingerprint) {
        final radioDetails = calibrationFingerprint.receivedSignals;

        radioDetails.forEach((bssid, rss) {
          if (rss != RSS.notReceived) {
            if (newRadioMap.containsKey(bssid)) {
              newRadioMap[bssid] += rss;
            } else {
              newRadioMap[bssid] = rss;
            }
          } else {
            if (!newRadioMap.containsKey(bssid)) {
              newRadioMap[bssid] = 0.0;
            }
            radioMapDivisor[bssid] -= 1;
          }
        });
      });

      newRadioMap.forEach((bssid, rss) {
        if (radioMapDivisor[bssid] <= 0) {
          newRadioMap[bssid] = RSS.notReceived;
        } else {
          newRadioMap[bssid] /= radioMapDivisor[bssid];
        }
      });
    }

    return calibrationPoint.copyWith(radioMap: newRadioMap);
  }

  void _updateCalibrationPoints({
    KtList<String> bssids,
  }) {
    final calibrationPointsMutable = _tempCalibrationPoints.toMutableList();
    final calibrationFingerprintsMutable =
        _tempCalibrationFingerprints.toMutableList();

    //update all calibration fingerprints
    for (int i = 0; i < calibrationFingerprintsMutable.size; i++) {
      calibrationFingerprintsMutable[i] =
          _updateRadioDetails(calibrationFingerprintsMutable[i], bssids);
    }

    //update calibration points
    for (int cpIndex = 0; cpIndex < calibrationPointsMutable.size; cpIndex++) {
      final calibrationPointId = calibrationPointsMutable[cpIndex].id;
      final relatedCalibrationFingerprints =
          calibrationFingerprintsMutable.filter((calibrationFingerprint) =>
              calibrationFingerprint.calibrationPointId == calibrationPointId);

      calibrationPointsMutable[cpIndex] = _updateRadioMap(
          _tempCalibrationPoints[cpIndex],
          relatedCalibrationFingerprints.toList());
    }

    //set updated calibration fingerprints & calibration points
    _tempCalibrationPoints = calibrationPointsMutable.toList();
    _tempCalibrationFingerprints = calibrationFingerprintsMutable.toList();
  }

  KtList<CalibrationPointDto> _docsToCalibrationPoints(
      KtList<DocumentSnapshot> docs) {
    return docs.map((doc) => CalibrationPointDto.fromFirestore(doc)).toList();
  }

  KtList<CalibrationFingerprintDto> _docsToCalibrationFingerprints(
      KtList<DocumentSnapshot> docs) {
    return docs
        .map((doc) => CalibrationFingerprintDto.fromFirestore(doc))
        .toList();
  }

  Future<List<QueryDocumentSnapshot>> _getAllRelatedDocuments(
      String calibrationPointId) async {
    final relatedCalibrationFingerprints = await _getRelatedItemDocuments(
        calibrationPointId, Constants.calibration_fingerprints);
    return relatedCalibrationFingerprints;
  }

  Future<List<QueryDocumentSnapshot>> _getRelatedItemDocuments(
      String calibrationPointId, String collectionPath) async {
    return await FirebaseFirestore.instance
        ?.collection(collectionPath)
        ?.where('calibrationPointId', isEqualTo: calibrationPointId)
        ?.get()
        ?.then((snapshot) => snapshot.docs);
  }
}

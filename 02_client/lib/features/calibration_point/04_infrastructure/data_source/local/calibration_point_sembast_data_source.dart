import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../../../access_point/04_infrastructure/dtos/access_point_dto.dart';
import '../../../../calibration_fingerprint/04_infrastructure/dtos/calibration_fingerprint_dto.dart';
import '../../dtos/calibration_point_dto.dart';
import '../i_calibration_point_data_source.dart';

@LazySingleton(as: ICalibrationPointDataSource, env: [Constants.local_dev])
class CalibrationPointSembastDataSource implements ICalibrationPointDataSource {
  final _calibrationPointStore =
      stringMapStoreFactory.store(Constants.calibration_points);
  final _calibrationFingerprintStore =
      stringMapStoreFactory.store(Constants.calibration_fingerprints);
  final _accessPointStore =
      stringMapStoreFactory.store(Constants.access_points);
  final _projectStore = stringMapStoreFactory.store(Constants.projects);
  KtList<CalibrationPointDto> _tempCalibrationPoints;
  KtList<CalibrationFingerprintDto> _tempCalibrationFingerprints;

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<CalibrationPointDto>> watchAllFromProject(
      String projectId) async* {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    yield* _calibrationPointStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => CalibrationPointDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CalibrationPointDto calibrationPoint) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final calibrationPointsInProject = await _getCountNumberOfProject(
          projectId: calibrationPoint.projectId,
          client: tx,
        );
        //write operations
        final calibrationPointId =
            await _calibrationPointStore.add(tx, calibrationPoint.toJson());
        await _calibrationPointStore
            .record(calibrationPointId)
            .update(tx, {'id': calibrationPointId});
        await _updateProject(
            projectId: calibrationPoint.projectId,
            countNumber: calibrationPointsInProject,
            client: tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future updateRadioMap(String projectId) async {
    final db = await _db;

    final Function(Transaction) updateRadioMapTransaction =
        (Transaction tx) async {
      //read operations
      final currentBSSIDs = await _getAccessPointBSSIDs(
        projectId: projectId,
        client: tx,
      );
      _tempCalibrationPoints = await _getCalibrationPoints(
        projectId: projectId,
        client: tx,
      );
      _tempCalibrationFingerprints = await _getCalibrationFingerprints(
        projectId: projectId,
        client: tx,
      );
      //data manipulation
      _updateCalibrationPoints(
        bssids: currentBSSIDs,
      );
      //write operations
      await Future.forEach(_tempCalibrationPoints.iter,
          (CalibrationPointDto calibrationPoint) async {
        await _calibrationPointStore
            .record(calibrationPoint.id)
            .update(tx, calibrationPoint.toJson());
      });
      await Future.forEach(_tempCalibrationFingerprints.iter,
          (CalibrationFingerprintDto calibrationFingerprint) async {
        await _calibrationFingerprintStore
            .record(calibrationFingerprint.id)
            .update(tx, calibrationFingerprint.toJson());
      });
    };

    return await db
        .transaction(updateRadioMapTransaction)
        .catchError((e) => throw DataSourceException(
              exception: e,
            ));
  }

  @override
  Future<CalibrationPointDto> read(String id) async {
    return await _calibrationPointStore
        .record(id)
        .get(await _db)
        .then((doc) => CalibrationPointDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<CalibrationPointDto>> readAllFromProject(
      String projectId) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    return await _calibrationPointStore
        .find(await _db, finder: finder)
        .then(
          (snapshot) => snapshot
              .map((doc) => CalibrationPointDto.fromJson(doc.value))
              .toImmutableList(),
        )
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CalibrationPointDto calibrationPoint) async {
    return await (await _db).transaction(
      (tx) async {
        //write operations
        await _calibrationPointStore
            .record(calibrationPoint.id)
            .update(tx, calibrationPoint.toJson());
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future delete(String id) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final projectId = await _getProjectId(id, tx);
        final calibrationPointsInProject = await _getCountNumberOfProject(
          projectId: projectId,
          client: tx,
        );
        final relatedRecords = await _getAllRelatedEntities(id, tx);
        //write operations
        await _calibrationPointStore.record(id).delete(tx);
        await _deleteRelatedRecords(relatedRecords, tx);
        await _updateProject(
          projectId: projectId,
          countNumber: calibrationPointsInProject,
          isDeletion: true,
          client: tx,
        );
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  Future<int> _getCountNumberOfProject({
    @required String projectId,
    @required DatabaseClient client,
  }) async {
    return (await _projectStore
        .record(projectId)
        .get(client))[Constants.registeredCalibrationPoints] as int;
  }

  Future<String> _getProjectId(
      String calibrationPointId, DatabaseClient client) async {
    return (await _calibrationPointStore
        .record(calibrationPointId)
        .get(client))['projectId'] as String;
  }

  Future _updateProject({
    @required String projectId,
    @required int countNumber,
    @required DatabaseClient client,
    bool isDeletion = false,
  }) async {
    final updatedCount = !isDeletion ? countNumber + 1 : countNumber - 1;
    return await _projectStore
        .record(projectId)
        .update(client, {Constants.registeredCalibrationPoints: updatedCount});
  }

  Future<KtList<String>> _getAccessPointBSSIDs({
    String projectId,
    DatabaseClient client,
  }) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));
    final recordSnapshot = await _accessPointStore.find(client, finder: finder);
    return recordSnapshot
        .map((e) => AccessPointDto.fromJson(e.value).bssid)
        .kt
        .toList();
  }

  Future<KtList<CalibrationPointDto>> _getCalibrationPoints({
    String projectId,
    DatabaseClient client,
  }) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));
    final recordSnapshot =
        await _calibrationPointStore.find(client, finder: finder);
    return recordSnapshot
        .map((e) => CalibrationPointDto.fromJson(e.value))
        .kt
        .toList();
  }

  Future<KtList<CalibrationFingerprintDto>> _getCalibrationFingerprints({
    String projectId,
    DatabaseClient client,
  }) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));
    final recordSnapshot =
        await _calibrationFingerprintStore.find(client, finder: finder);
    return recordSnapshot
        .map((e) => CalibrationFingerprintDto.fromJson(e.value))
        .kt
        .toList();
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

    if (!(calibrationFingerprints.size == 0)) {
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

  Future<List<RecordSnapshot<String, Map<String, dynamic>>>>
      _getAllRelatedEntities(
          String calibrationPointId, DatabaseClient client) async {
    final relatedAccessPoints = await _getProjectRelatedRecordsOfStore(
        calibrationPointId, Constants.calibration_fingerprints, client);
    return relatedAccessPoints;
  }

  Future<List<RecordSnapshot<String, Map<String, dynamic>>>>
      _getProjectRelatedRecordsOfStore(String calibrationPointId,
          String storePath, DatabaseClient client) async {
    final finder =
        Finder(filter: Filter.equals('projectId', calibrationPointId));

    return await stringMapStoreFactory
        .store(storePath)
        ?.find(client, finder: finder)
        ?.then((snapshotList) => snapshotList);
  }

  Future<List<dynamic>> _deleteRelatedRecords(
      List<RecordSnapshot<String, Map<String, dynamic>>> recordsToDelete,
      DatabaseClient client) async {
    final List<dynamic> dynamicList = List<dynamic>();

    await Future.forEach(recordsToDelete, (RecordSnapshot record) async {
      final recordId = record.value['id'];
      dynamicList.add(
          await _calibrationFingerprintStore.record(recordId).delete(client));
    });

    return dynamicList;
  }
}

import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/calibration_fingerprint_dto.dart';
import '../i_calibration_fingerprint_data_source.dart';

@LazySingleton(
    as: ICalibrationFingerprintDataSource, env: [Constants.local_dev])
class CalibrationFingerprintSembastDataSource
    implements ICalibrationFingerprintDataSource {
  final _calibrationFingerprintStore =
      stringMapStoreFactory.store(Constants.calibration_fingerprints);
  final _projectStore = stringMapStoreFactory.store(Constants.projects);

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<CalibrationFingerprintDto>> watchAllFromProject(
      String projectId) async* {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    yield* _calibrationFingerprintStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => CalibrationFingerprintDto.fromJson(doc.value))
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
    final finder =
        Finder(filter: Filter.equals('calibrationPointId', calibrationPointId));

    yield* _calibrationFingerprintStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => CalibrationFingerprintDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CalibrationFingerprintDto calibrationFingerprint) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final calibrationFingerprintsInProject = await _getCountNumberOfProject(
          projectId: calibrationFingerprint.projectId,
          client: tx,
        );
        //write operations
        final calibrationFingerprintId = await _calibrationFingerprintStore.add(
            tx, calibrationFingerprint.toJson());
        await _calibrationFingerprintStore
            .record(calibrationFingerprintId)
            .update(tx, {'id': calibrationFingerprintId});
        await _updateProject(
            projectId: calibrationFingerprint.projectId,
            countNumber: calibrationFingerprintsInProject,
            client: tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<CalibrationFingerprintDto> read(String id) async {
    return await _calibrationFingerprintStore
        .record(id)
        .get(await _db)
        .then((doc) => CalibrationFingerprintDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CalibrationFingerprintDto calibrationFingerprint) async {
    return await (await _db).transaction(
      (tx) async {
        //write operations
        await _calibrationFingerprintStore
            .record(calibrationFingerprint.id)
            .update(tx, calibrationFingerprint.toJson());
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
        final calibrationFingerprintsInProject = await _getCountNumberOfProject(
          projectId: projectId,
          client: tx,
        );
        //write operations
        await _calibrationFingerprintStore.record(id).delete(tx);
        await _updateProject(
          projectId: projectId,
          countNumber: calibrationFingerprintsInProject,
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
        .get(client))[Constants.registeredCalibrationFingerprints] as int;
  }

  Future<String> _getProjectId(
      String calibrationFingerprintId, DatabaseClient client) async {
    return (await _calibrationFingerprintStore
        .record(calibrationFingerprintId)
        .get(client))['projectId'] as String;
  }

  Future _updateProject({
    @required String projectId,
    @required int countNumber,
    @required DatabaseClient client,
    bool isDeletion = false,
  }) async {
    final updatedCount = !isDeletion ? countNumber + 1 : countNumber - 1;
    return await _projectStore.record(projectId).update(
        client, {Constants.registeredCalibrationFingerprints: updatedCount});
  }
}

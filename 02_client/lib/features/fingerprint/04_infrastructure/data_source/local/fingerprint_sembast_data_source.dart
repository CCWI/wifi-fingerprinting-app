import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/fingerprint_dto.dart';
import '../i_fingerprint_data_source.dart';

@LazySingleton(as: IFingerprintDataSource, env: [Constants.local_dev])
class FingerprintSembastDataSource implements IFingerprintDataSource {
  final _fingerprintStore =
      stringMapStoreFactory.store(Constants.calibration_points);
  final _projectStore = stringMapStoreFactory.store(Constants.projects);

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<FingerprintDto>> watchAllFromProject(String projectId) async* {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    yield* _fingerprintStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => FingerprintDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(FingerprintDto fingerprint) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final fingerprintsInProject = await _getCountNumberOfProject(
          projectId: fingerprint.projectId,
          client: tx,
        );
        //write operations
        final fingerprintId =
            await _fingerprintStore.add(tx, fingerprint.toJson());
        await _fingerprintStore
            .record(fingerprintId)
            .update(tx, {'id': fingerprintId});
        await _updateProject(
            projectId: fingerprint.projectId,
            countNumber: fingerprintsInProject,
            client: tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<FingerprintDto> read(String id) async {
    return await _fingerprintStore
        .record(id)
        .get(await _db)
        .then((doc) => FingerprintDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<List<FingerprintDto>> readAllFingerprints() async {
    return await _fingerprintStore
        .find(await _db)
        .then(
          (snapshot) => snapshot
              .map((doc) => FingerprintDto.fromJson(doc.value))
              .toList(),
        )
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(FingerprintDto fingerprint) async {
    return await (await _db).transaction(
      (tx) async {
        //write operations
        await _fingerprintStore
            .record(fingerprint.id)
            .update(tx, fingerprint.toJson());
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
        final fingerprintsInProject = await _getCountNumberOfProject(
          projectId: projectId,
          client: tx,
        );
        //write operations
        await _fingerprintStore.record(id).delete(tx);
        await _updateProject(
          projectId: projectId,
          countNumber: fingerprintsInProject,
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
        .get(client))[Constants.registeredFingerprints] as int;
  }

  Future<String> _getProjectId(
      String fingerprintId, DatabaseClient client) async {
    return (await _fingerprintStore
        .record(fingerprintId)
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
        .update(client, {Constants.registeredFingerprints: updatedCount});
  }
}

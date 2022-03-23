import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/access_point_dto.dart';
import '../i_access_point_data_source.dart';

@LazySingleton(as: IAccessPointDataSource, env: [Constants.local_dev])
class AccessPointSembastDataSource implements IAccessPointDataSource {
  final _accessPointStore =
      stringMapStoreFactory.store(Constants.access_points);
  final _projectStore = stringMapStoreFactory.store(Constants.projects);

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<AccessPointDto>> watchAllFromProject(String projectId) async* {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    yield* _accessPointStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => AccessPointDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<AccessPointDto>> readAllFromProject(String projectId) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    return await _accessPointStore
        .find(await _db, finder: finder)
        .then(
          (snapshot) => snapshot
              .map((doc) => AccessPointDto.fromJson(doc.value))
              .toImmutableList(),
        )
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(AccessPointDto accessPoint) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final accessPointsInProject = await _getCountNumberOfProject(
          projectId: accessPoint.projectId,
          client: tx,
        );
        //write operations
        final accessPointId =
            await _accessPointStore.add(tx, accessPoint.toJson());
        await _accessPointStore
            .record(accessPointId)
            .update(tx, {'id': accessPointId});
        await _updateProject(
            projectId: accessPoint.projectId,
            countNumber: accessPointsInProject,
            client: tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future addNotExistingOnes(KtList<AccessPointDto> accessPoints) async {
    final projectId = accessPoints.first()?.projectId;
    final finder = Finder(filter: Filter.equals('projectId', projectId));
    final db = await _db;

    final Function(Transaction) addNotExistingOnesTransaction =
        (Transaction tx) async {
      //read operations
      final existingAccessPointBSSIDs = await _accessPointStore
          .find(tx, finder: finder)
          .then((snapshot) => snapshot
              .map((doc) => AccessPointDto.fromJson(doc.value).bssid)
              .kt
              .toList());

      final notExistingAccessPoints = accessPoints.filter((accessPoint) =>
          !existingAccessPointBSSIDs.contains(accessPoint.bssid));

      final accessPointsInProject = await _getCountNumberOfProject(
        projectId: projectId,
        client: tx,
      );

      //write operations
      int tempAccessPointsInProject = accessPointsInProject;
      await Future.forEach(notExistingAccessPoints.iter,
          (AccessPointDto accessPoint) async {
        final accessPointId =
            await _accessPointStore.add(tx, accessPoint.toJson());
        await _accessPointStore
            .record(accessPointId)
            .update(tx, {'id': accessPointId});
        await _updateProject(
            projectId: accessPoint.projectId,
            countNumber: tempAccessPointsInProject,
            client: tx);
        tempAccessPointsInProject++;
      });
    };

    return await db
        .transaction(addNotExistingOnesTransaction)
        .catchError((e) => throw DataSourceException(
              exception: e,
            ));
  }

  @override
  Future<AccessPointDto> read(String id) async {
    return await _accessPointStore
        .record(id)
        .get(await _db)
        .then((doc) => AccessPointDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(AccessPointDto accessPoint) async {
    return await (await _db).transaction(
      (tx) async {
        //write operations
        await _accessPointStore
            .record(accessPoint.id)
            .update(tx, accessPoint.toJson());
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
        final accessPointsInProject = await _getCountNumberOfProject(
          projectId: projectId,
          client: tx,
        );
        //write operations
        await _accessPointStore.record(id).delete(tx);
        await _updateProject(
          projectId: projectId,
          countNumber: accessPointsInProject,
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
        .get(client))[Constants.registeredAccessPoints] as int;
  }

  Future<String> _getProjectId(
      String accessPointId, DatabaseClient client) async {
    return (await _accessPointStore
        .record(accessPointId)
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
        .update(client, {Constants.registeredAccessPoints: updatedCount});
  }
}

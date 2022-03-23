import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/04_infrastructure/dtos/floormap/floor_map_dto.dart';
import '../../../../../common/04_infrastructure/dtos/project_details/project_details_dto.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/project_dto.dart';
import '../i_project_data_source.dart';

@LazySingleton(as: IProjectDataSource, env: [Constants.local_dev])
class ProjectSembastDataSource implements IProjectDataSource {
  final _projectStore = stringMapStoreFactory.store(Constants.projects);

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<ProjectDto>> watchAll() async* {
    final finder = Finder(sortOrders: [SortOrder('name', false)]);

    yield* _projectStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => ProjectDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Stream<ProjectDto> watchById(String id) async* {
    yield* _projectStore
        .record(id)
        .onSnapshot(await _db)
        .map(
          (snapshot) => ProjectDto.fromJson(snapshot.value),
        )
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(ProjectDto project) async {
    return await (await _db).transaction(
      (tx) async {
        final projectId = await _projectStore.add(tx, project.toJson());
        await _projectStore.record(projectId).update(tx, {'id': projectId});
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<String> createAndGetReference(ProjectDto project) async {
    final Future<String> Function(Transaction)
        createAndGetReferenceTransaction = (tx) async {
      final projectId = await _projectStore.add(tx, project.toJson());
      await _projectStore.record(projectId).update(tx, {'id': projectId});
      return projectId;
    };

    return await (await _db)
        .transaction(createAndGetReferenceTransaction)
        .then((id) => id)
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<ProjectDto> read(String id) async {
    return await _projectStore
        .record(id)
        .get(await _db)
        .then((doc) => ProjectDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<ProjectDetailsDto> readProjectDetails(String id) async {
    return await _projectStore.record(id).get(await _db).then((doc) {
      final projectDto = ProjectDto.fromJson(doc);
      return ProjectDetailsDto(
        projectId: id,
        xMaxValue: projectDto.xLength,
        yMaxValue: projectDto.yLength,
        floors: projectDto.floors,
      );
    }).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<KtList<FloorMapDto>> readFloorsByProjectId(String id) async {
    return await _projectStore.record(id).get(await _db).then((doc) {
      final projectDto = ProjectDto.fromJson(doc);
      return projectDto.floors.toImmutableList();
    }).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<FloorMapDto> readFloorById(String projectId, String floorId) async {
    return await _projectStore.record(projectId).get(await _db).then((doc) {
      FloorMapDto floorToReturn;
      final floors = ProjectDto.fromJson(doc).floors;

      for (FloorMapDto floor in floors) {
        if (floor.id == floorId) {
          floorToReturn = floor;
        }
      }

      return floorToReturn;
    }).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<Offset> readCartesianDimensionsById(String id) async {
    return await _projectStore.record(id).get(await _db).then((doc) {
      final projectDto = ProjectDto.fromJson(doc);
      return Offset(projectDto.xLength, projectDto.yLength);
    }).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future update(ProjectDto project) async {
    return await (await _db).transaction(
      (tx) async {
        await _projectStore.record(project.id).update(tx, project.toJson());
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
        final relatedRecords = await _getAllRelatedEntities(id, tx);
        //write operations
        await _projectStore.record(id).delete(tx);
        await _deleteRelatedRecords(relatedRecords, tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  Future<List<dynamic>> _deleteRelatedRecords(
      List<RecordSnapshot<String, Map<String, dynamic>>> recordsToDelete,
      DatabaseClient client) async {
    final List<dynamic> dynamicList = List<dynamic>();

    recordsToDelete.forEach((record) async {
      final recordId = record.value['id'];
      dynamicList.add(await _projectStore.record(recordId).delete(client));
    });
    return dynamicList;
  }

  Future<List<RecordSnapshot<String, Map<String, dynamic>>>>
      _getAllRelatedEntities(String projectId, DatabaseClient client) async {
    final relatedAccessPoints = await _getProjectRelatedRecordsOfStore(
        projectId, Constants.access_points, client);
    final relatedFingerprints = await _getProjectRelatedRecordsOfStore(
        projectId, Constants.fingerprints, client);
    final relatedCalibrationPoints = await _getProjectRelatedRecordsOfStore(
        projectId, Constants.calibration_points, client);
    final relatedCalibrationFingerprints =
        await _getProjectRelatedRecordsOfStore(
            projectId, Constants.calibration_fingerprints, client);
    final relatedCells = await _getProjectRelatedRecordsOfStore(
        projectId, Constants.cells, client);
    return relatedAccessPoints +
        relatedFingerprints +
        relatedCalibrationPoints +
        relatedCalibrationFingerprints +
        relatedCells;
  }

  Future<List<RecordSnapshot<String, Map<String, dynamic>>>>
      _getProjectRelatedRecordsOfStore(
          String projectId, String storePath, DatabaseClient client) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    return await stringMapStoreFactory
        .store(storePath)
        ?.find(client, finder: finder)
        ?.then((snapshotList) => snapshotList);
  }
}

import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/data_scource/local/sembast_database.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/cell_dto.dart';
import '../i_cell_data_source.dart';

@LazySingleton(as: ICellDataSource, env: [Constants.local_dev])
class CellSembastDataSource implements ICellDataSource {
  final _cellStore = stringMapStoreFactory.store(Constants.calibration_points);
  final _projectStore = stringMapStoreFactory.store(Constants.projects);

  Future<Database> get _db async => SembastDatabase.instance.database;

  @override
  Stream<KtList<CellDto>> watchAllFromProject(String projectId) async* {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    yield* _cellStore
        .query(finder: finder)
        .onSnapshots(await _db)
        .map((snapshot) => snapshot
            .map((doc) => CellDto.fromJson(doc.value))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<KtList<CellDto>> readAllFromProject(String projectId) async {
    final finder = Finder(filter: Filter.equals('projectId', projectId));

    return await _cellStore
        .find(await _db, finder: finder)
        .then(
          (snapshot) => snapshot
              .map((doc) => CellDto.fromJson(doc.value))
              .toImmutableList(),
        )
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(CellDto cell) async {
    return await (await _db).transaction(
      (tx) async {
        //read operations
        final cellsInProject = await _getCountNumberOfProject(
          projectId: cell.projectId,
          client: tx,
        );
        //write operations
        final cellId = await _cellStore.add(tx, cell.toJson());
        await _cellStore.record(cellId).update(tx, {'id': cellId});
        await _updateProject(
            projectId: cell.projectId, countNumber: cellsInProject, client: tx);
      },
    ).catchError(
      (e) => throw DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<CellDto> read(String id) async {
    return await _cellStore
        .record(id)
        .get(await _db)
        .then((doc) => CellDto.fromJson(doc))
        .catchError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future update(CellDto cell) async {
    return await (await _db).transaction(
      (tx) async {
        //write operations
        await _cellStore.record(cell.id).update(tx, cell.toJson());
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
        final cellsInProject = await _getCountNumberOfProject(
          projectId: projectId,
          client: tx,
        );
        //write operations
        await _cellStore.record(id).delete(tx);
        await _updateProject(
          projectId: projectId,
          countNumber: cellsInProject,
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
        .get(client))[Constants.registeredCells] as int;
  }

  Future<String> _getProjectId(String cellId, DatabaseClient client) async {
    return (await _cellStore.record(cellId).get(client))['projectId'] as String;
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
        .update(client, {Constants.registeredCells: updatedCount});
  }
}

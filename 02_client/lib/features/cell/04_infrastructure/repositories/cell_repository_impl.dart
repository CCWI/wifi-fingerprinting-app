import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/cell.dart';
import '../../03_domain/failures/cell_failure.dart';
import '../../03_domain/repositories/i_cell_repository.dart';
import '../data_source/i_cell_data_source.dart';
import '../dtos/cell_dto.dart';

@LazySingleton(as: ICellRepository)
class CellRepositoryImpl implements ICellRepository {
  final ICellDataSource _dataSource;

  CellRepositoryImpl(ICellDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<CellFailure, KtList<Cell>>> watchAllFromProject(
      UniqueId projectId) async* {
    yield* _dataSource
        .watchAllFromProject(projectId.getOrCrash())
        .map(
          (snapshot) => right<CellFailure, KtList<Cell>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CellFailure, KtList<Cell>>> readAllFromProject(
      UniqueId projectId) async {
    return await _dataSource
        .readAllFromProject(projectId.getOrCrash())
        .then((dtos) =>
            right<CellFailure, KtList<Cell>>(dtos.map((dto) => dto.toDomain())))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CellFailure, Unit>> create(Cell cell) async {
    final cellDto = CellDto.fromDomain(cell);

    return await _dataSource
        .create(cellDto)
        .then((_) => right<CellFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CellFailure, Cell>> readById(UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (cellDto) => right<CellFailure, Cell>(
            cellDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CellFailure, Unit>> update(Cell cell) async {
    final projectDto = CellDto.fromDomain(cell);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<CellFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CellFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then(
          (_) => right<CellFailure, Unit>(unit),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CellFailure.unexpected());
        } else {
          return left(const CellFailure.unexpected());
        }
      },
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/cell.dart';
import '../failures/cell_failure.dart';

abstract class ICellRepository {
  Stream<Either<CellFailure, KtList<Cell>>> watchAllFromProject(UniqueId projectId);
  Future<Either<CellFailure, KtList<Cell>>> readAllFromProject(UniqueId projectId);
  Future<Either<CellFailure, Cell>> readById(UniqueId id);
  Future<Either<CellFailure, Unit>> create(Cell cell);
  Future<Either<CellFailure, Unit>> update(Cell cell);
  Future<Either<CellFailure, Unit>> delete(UniqueId id);
}
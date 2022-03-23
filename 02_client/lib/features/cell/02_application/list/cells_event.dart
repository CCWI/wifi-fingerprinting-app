part of 'cells_bloc.dart';

@freezed
abstract class CellsEvent with _$CellsEvent {
  const factory CellsEvent.watchAllStarted(UniqueId projectId) = _WatchAllStarted;
  const factory CellsEvent.cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells) = _CellsReceived;
}

part of 'cells_bloc.dart';

@freezed
abstract class CellsState with _$CellsState {
  const factory CellsState.initial() = Initial;
  const factory CellsState.loadInProgress() = DataTransferInProgress;
  const factory CellsState.loadSuccess(KtList<Cell> cells) = LoadSuccess;
  const factory CellsState.loadFailure(CellFailure cellFailure) = LoadFailure;
}

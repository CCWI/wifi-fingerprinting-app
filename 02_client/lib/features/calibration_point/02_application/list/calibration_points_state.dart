part of 'calibration_points_bloc.dart';

@freezed
abstract class CalibrationPointsState with _$CalibrationPointsState {
  const factory CalibrationPointsState.initial() = Initial;
  const factory CalibrationPointsState.loadInProgress() = DataTransferInProgress;
  const factory CalibrationPointsState.loadSuccess(KtList<CalibrationPoint> calibrationPoints) = LoadSuccess;
  const factory CalibrationPointsState.loadFailure(CalibrationPointFailure calibrationPointFailure) = LoadFailure;
}

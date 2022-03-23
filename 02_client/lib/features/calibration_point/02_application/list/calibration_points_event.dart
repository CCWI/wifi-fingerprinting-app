part of 'calibration_points_bloc.dart';

@freezed
abstract class CalibrationPointsEvent with _$CalibrationPointsEvent {
  const factory CalibrationPointsEvent.watchAllStarted(UniqueId projectId) = _WatchAllStarted;
  const factory CalibrationPointsEvent.calibrationPointsReceived(Either<CalibrationPointFailure, KtList<CalibrationPoint>> failureOrCalibrationPoints) = _CalibrationPointsReceived;
}

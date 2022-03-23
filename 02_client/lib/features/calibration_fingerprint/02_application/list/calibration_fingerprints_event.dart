part of 'calibration_fingerprints_bloc.dart';

@freezed
abstract class CalibrationFingerprintsEvent with _$CalibrationFingerprintsEvent {
  const factory CalibrationFingerprintsEvent.watchAllStarted(UniqueId calibrationPointId) = _WatchAllStarted;
  const factory CalibrationFingerprintsEvent.calibrationFingerprintsReceived(Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>> failureOrProjects) = _CalibrationFingerprintsReceived;
  const factory CalibrationFingerprintsEvent.calibrationFingerprintDeleted(UniqueId calibrationFingerprintId) = _CalibrationFingerprintDeleted;
}

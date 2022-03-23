part of 'calibration_fingerprints_bloc.dart';

@freezed
abstract class CalibrationFingerprintsState with _$CalibrationFingerprintsState {
  const factory CalibrationFingerprintsState.initial() = Initial;
  const factory CalibrationFingerprintsState.loadInProgress() = DataTransferInProgress;
  const factory CalibrationFingerprintsState.loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints) = LoadSuccess;
  const factory CalibrationFingerprintsState.loadFailure(CalibrationFingerprintFailure calibrationFingerprintFailure) = LoadFailure;
  const factory CalibrationFingerprintsState.deletionSuccess() = DeletionSuccess;
  const factory CalibrationFingerprintsState.deletionFailure(CalibrationFingerprintFailure calibrationFingerprintFailure) = DeletionFailure;
} 

part of 'calibration_fingerprint_form_bloc.dart';

@freezed
abstract class CalibrationFingerprintFormState with _$CalibrationFingerprintFormState {
  const factory CalibrationFingerprintFormState.initial() = Initial;
  const factory CalibrationFingerprintFormState.signalLoadInProgress() = SignalLoadInProgress;
  const factory CalibrationFingerprintFormState.signalLoadSuccess(KtList<Signal> signals) = SignalLoadSuccess;
  const factory CalibrationFingerprintFormState.signalLoadFailure(SignalFailure failure) = LoadFailure;
  const factory CalibrationFingerprintFormState.saveCalibrationFingerprintSuccess() = SaveCalibrationFingerprintSuccess;
  const factory CalibrationFingerprintFormState.saveCalibrationFingerprintFailure(CalibrationFingerprintFailure failure) = SaveCalibrationFingerprintFailure;
}

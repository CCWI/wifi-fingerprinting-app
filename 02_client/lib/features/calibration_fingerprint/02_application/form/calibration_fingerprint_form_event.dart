part of 'calibration_fingerprint_form_bloc.dart';

@freezed
abstract class CalibrationFingerprintFormEvent with _$CalibrationFingerprintFormEvent {
  const factory CalibrationFingerprintFormEvent.initialized(UniqueId calibrationPointId, UniqueId projectId) = _Initialized;
  const factory CalibrationFingerprintFormEvent.saved() = _Saved;
}

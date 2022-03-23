part of 'fingerprint_form_bloc.dart';

@freezed
abstract class FingerprintFormEvent with _$FingerprintFormEvent {
  const factory FingerprintFormEvent.initialized(UniqueId projectId) = _Initialized;
  const factory FingerprintFormEvent.saved() = _Saved;
}

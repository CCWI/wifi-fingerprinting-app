part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialized() = _Initialized;
  const factory SettingsEvent.saved(Settings settings) = _Saved;
  const factory SettingsEvent.fingerprintsRecalculated() =
      _FingerprintsRecalculated;
}

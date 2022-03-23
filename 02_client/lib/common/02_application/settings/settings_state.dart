part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.loadInProgress() = LoadInProgress;
  const factory SettingsState.recalculationLoadInProgress() =
      RecalculationLoadInProgress;
  const factory SettingsState.settingsLoadSuccess(Settings settings) =
      SettingsLoadSuccess;
  const factory SettingsState.settingsSaveSuccess(Settings savedSettings) =
      SettingsSaveSuccess;
  const factory SettingsState.recalculationSaveSuccess(Settings settingsToDisplay) = RecalculationSuccess;
  const factory SettingsState.settingsLoadFailure(SettingsFailure failure) =
      LoadFailure;
  const factory SettingsState.settingsSaveFailure(SettingsFailure failure) =
      SettingsSaveFailure;
  const factory SettingsState.recalculationSaveFailure(
      FingerprintFailure failure) = RecalculationSaveFailure;
}

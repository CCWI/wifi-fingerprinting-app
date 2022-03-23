import '../dtos/settings/settings_dto.dart';

abstract class ISettingsDataSource {
  Future<SettingsDto> getSettings();
  Future saveSettings(SettingsDto settings);
}
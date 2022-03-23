import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dtos/settings/settings_dto.dart';
import '../i_settings_data_source.dart';

@LazySingleton(as: ISettingsDataSource)
class SettingsSharedPreferences implements ISettingsDataSource {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<SettingsDto> getSettings() async {
    final prefs = await _prefs;

    return SettingsDto(
      knnKValue: (prefs.getInt('knnKValue') ?? 3),
      locationAlgorithm: (prefs.getInt('locationAlgorithm') ?? 1),
    );
  }

  @override
  Future saveSettings(SettingsDto settings) async {
    final prefs = await _prefs;

    prefs.setInt('knnKValue', settings.knnKValue);
    prefs.setInt('locationAlgorithm', settings.locationAlgorithm);
  }
}

import 'package:dartz/dartz.dart';

import '../entities/settings/settings.dart';
import '../failures/settings_failure.dart';

abstract class ISettingsRepository {
  Future<Either<SettingsFailure,Settings>> getSettings();
  Future<Either<SettingsFailure,Unit>> saveSettings(Settings settings);
}
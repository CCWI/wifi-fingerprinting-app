import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../03_domain/entities/settings/settings.dart';
import '../../03_domain/failures/settings_failure.dart';
import '../../03_domain/repositories/i_settings_repository.dart';
import '../data_scource/i_settings_data_source.dart';
import '../dtos/settings/settings_dto.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  final ISettingsDataSource _dataSource;

  SettingsRepository(ISettingsDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Future<Either<SettingsFailure, Settings>> getSettings() async {
    return await _dataSource
        .getSettings()
        .then(
            (settings) => right<SettingsFailure, Settings>(settings.toDomain()))
        .catchError(
      (e) {
        return left(const SettingsFailure.unexpected());
      },
    );
  }

  @override
  Future<Either<SettingsFailure, Unit>> saveSettings(Settings settings) async {
    return await _dataSource
        .saveSettings(SettingsDto.fromDomain(settings))
        .then((_) => right<SettingsFailure, Unit>(unit))
        .catchError(
      (e) {
        return left(const SettingsFailure.unexpected());
      },
    );
  }
}

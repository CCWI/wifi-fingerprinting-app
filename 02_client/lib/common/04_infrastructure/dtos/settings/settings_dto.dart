import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../03_domain/entities/settings/algorithm.dart';
import '../../../03_domain/entities/settings/settings.dart';
import '../../../03_domain/value_objects/settings_value_objects.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

@freezed
abstract class SettingsDto with _$SettingsDto {
  factory SettingsDto({
    @required int knnKValue,
    @required int locationAlgorithm,
  }) = _SettingsDto;

  factory SettingsDto.fromDomain(Settings settings) {
    return SettingsDto(
      knnKValue: settings.knnKValue.getOrCrash(),
      locationAlgorithm: settings.locationAlgorithm.index,
    );
  }

  factory SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsDtoFromJson(json);
}

extension SettingsDtoX on SettingsDto {
  Settings toDomain() {
    return Settings(
      knnKValue: KnnKValue(knnKValue),
      locationAlgorithm: Algorithm.values[locationAlgorithm],
    );
  }
}

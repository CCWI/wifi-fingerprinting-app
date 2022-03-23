import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure{
  const factory SettingsFailure.unexpected() = Unexpected;
  const factory SettingsFailure.unableToSafe() = InsufficientPermissions;
}
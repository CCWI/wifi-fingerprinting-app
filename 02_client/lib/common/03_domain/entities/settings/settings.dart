import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../failures/failures.dart';
import '../../value_objects/settings_value_objects.dart';
import 'algorithm.dart';

part 'settings.freezed.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    @required KnnKValue knnKValue,
    @required Algorithm locationAlgorithm,
  }) = _Settings;
}

extension SettingsX on Settings {
  Option<ValueFailure<dynamic>> get failureOption {
    return knnKValue.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'calibration_point_failure.freezed.dart';

@freezed
abstract class CalibrationPointFailure with _$CalibrationPointFailure{
  const factory CalibrationPointFailure.unexpected() = Unexpected;
  const factory CalibrationPointFailure.insufficientPermissions() = InsufficientPermissions;
  const factory CalibrationPointFailure.unableToUpdate() = UnableToUpdate;
  const factory CalibrationPointFailure.unableToRead() = UnableToRead;
  const factory CalibrationPointFailure.unableToDelete() = UnableToDelete;
}
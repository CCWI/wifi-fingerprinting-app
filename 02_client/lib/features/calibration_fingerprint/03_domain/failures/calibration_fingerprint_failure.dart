import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../access_point/03_domain/failures/access_point_failures.dart';
import '../../../calibration_point/03_domain/failures/calibration_point_failure.dart';

part 'calibration_fingerprint_failure.freezed.dart';

@freezed
abstract class CalibrationFingerprintFailure
    with _$CalibrationFingerprintFailure {
  const factory CalibrationFingerprintFailure.unexpected() = Unexpected;
  const factory CalibrationFingerprintFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory CalibrationFingerprintFailure.unableToUpdate() = UnableToUpdate;
  const factory CalibrationFingerprintFailure.unableToRead() = UnableToRead;
  const factory CalibrationFingerprintFailure.unableToDelete() = UnableToDelete;
  const factory CalibrationFingerprintFailure.unableToUpdateAccessPoints(
      AccessPointFailure accessPointFailure) = UnableToUpdateAccessPoints;
  const factory CalibrationFingerprintFailure.unableToUpdateRadioMap(
      CalibrationPointFailure calibrationPointFailure) = UnableToUpdateRadioMap;
}

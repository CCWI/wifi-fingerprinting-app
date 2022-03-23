import 'package:dartz/dartz.dart';

import '../entities/create_calibration_fingerprint_request.dart';
import '../failures/calibration_fingerprint_failure.dart';

abstract class ICalibrationFingerprintCloudRepository {
  Future<Either<CalibrationFingerprintFailure, Unit>> create(CreateCalibrationFingerprintRequest createCalibrationFingerprintRequest);
}
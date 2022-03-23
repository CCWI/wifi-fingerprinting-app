import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../03_domain/failures/calibration_fingerprint_failure.dart';

abstract class ICalibrationFingerprintService {
  Future<Either<CalibrationFingerprintFailure, Unit>>
      createCalibrationFingerprintAndUpdateDatabase(
          KtList<Signal> receivedSignals,
          UniqueId projectId,
          UniqueId calibrationPointId);
}

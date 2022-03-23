import 'package:dartz/dartz.dart';

import '../../../features/fingerprint/03_domain/entities/fingerprint.dart';
import '../../../features/fingerprint/03_domain/failures/fingerprint_failure.dart';
import '../entities/calculate_position_request/calculate_position_request.dart';

abstract class ILocationCalculationCloudRepository {
  Future<Either<FingerprintFailure, Fingerprint>> calculatePositionOnCloud(
      CalculatePositionRequest calculatePositionRequest);
}

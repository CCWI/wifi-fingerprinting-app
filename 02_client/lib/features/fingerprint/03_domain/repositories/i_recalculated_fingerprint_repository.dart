import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../entities/recalculated_fingerprint.dart';
import '../failures/fingerprint_failure.dart';

abstract class IRecalculatedFingerprintRepository {
  Future<Either<FingerprintFailure, Unit>> createRecalculatedFingerprints(
      KtList<RecalculatedFingerprint> fingerprints, String collectionName);
}

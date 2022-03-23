import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/fingerprint.dart';
import '../failures/fingerprint_failure.dart';

abstract class IFingerprintRepository {
  Stream<Either<FingerprintFailure, KtList<Fingerprint>>> watchAllFromProject(
      UniqueId projectId);
  Future<Either<FingerprintFailure, Fingerprint>> readById(UniqueId id);
  Future<Either<FingerprintFailure, KtList<Fingerprint>>> readAllFingerprints();
  Future<Either<FingerprintFailure, Unit>> create(Fingerprint fingerprint);
  Future<Either<FingerprintFailure, Unit>> update(Fingerprint fingerprint);
  Future<Either<FingerprintFailure, Unit>> delete(UniqueId id);
}

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/calibration_fingerprint.dart';
import '../failures/calibration_fingerprint_failure.dart';

abstract class ICalibrationFingerprintRepository {
  Stream<Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>> watchAllFromProject(UniqueId projectId);
  Stream<Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>> watchAllFromCalibrationPoint(UniqueId calibrationPointId);
  Future<Either<CalibrationFingerprintFailure, CalibrationFingerprint>> readById(UniqueId id);
  Future<Either<CalibrationFingerprintFailure, Unit>> create(CalibrationFingerprint calibrationFingerprint);
  Future<Either<CalibrationFingerprintFailure, Unit>> update(CalibrationFingerprint calibrationFingerprint);
  Future<Either<CalibrationFingerprintFailure, Unit>> delete(UniqueId id);
}
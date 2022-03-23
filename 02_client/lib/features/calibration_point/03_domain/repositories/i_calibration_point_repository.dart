import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/calibration_point.dart';
import '../failures/calibration_point_failure.dart';

abstract class ICalibrationPointRepository {
  Stream<Either<CalibrationPointFailure, KtList<CalibrationPoint>>> watchAllFromProject(UniqueId projectId);
  Future<Either<CalibrationPointFailure, CalibrationPoint>> readById(UniqueId id);
  Future<Either<CalibrationPointFailure, KtList<CalibrationPoint>>> readAllFromProject(UniqueId projectId);
  Future<Either<CalibrationPointFailure, Unit>> updateRadioMap(UniqueId projectId);
  Future<Either<CalibrationPointFailure, Unit>> create(CalibrationPoint calibrationPoint);
  Future<Either<CalibrationPointFailure, Unit>> update(CalibrationPoint calibrationPoint);
  Future<Either<CalibrationPointFailure, Unit>> delete(UniqueId id);
}

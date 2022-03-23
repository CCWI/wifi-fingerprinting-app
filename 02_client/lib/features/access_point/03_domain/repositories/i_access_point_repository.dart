import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/access_point.dart';
import '../failures/access_point_failures.dart';

abstract class IAccessPointRepository {
  Stream<Either<AccessPointFailure, KtList<AccessPoint>>> watchAllFromProject(UniqueId projectId);
  Future<Either<AccessPointFailure, KtList<AccessPoint>>> readAllFromProject(UniqueId projectId);
  Future<Either<AccessPointFailure, AccessPoint>> readById(UniqueId id);
  Future<Either<AccessPointFailure, Unit>> create(AccessPoint accessPoint);
  Future<Either<AccessPointFailure, Unit>> createNotExistingOnes(KtList<AccessPoint> accessPoints);
  Future<Either<AccessPointFailure, Unit>> update(AccessPoint accessPoint);
  Future<Either<AccessPointFailure, Unit>> delete(UniqueId id);
}

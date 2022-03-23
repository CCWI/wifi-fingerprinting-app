import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/access_point.dart';
import '../../03_domain/failures/access_point_failures.dart';
import '../../03_domain/repositories/i_access_point_repository.dart';
import '../data_source/i_access_point_data_source.dart';
import '../dtos/access_point_dto.dart';

@LazySingleton(as: IAccessPointRepository)
class AccessPointRepositoryImpl implements IAccessPointRepository {
  final IAccessPointDataSource _dataSource;

  AccessPointRepositoryImpl(IAccessPointDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<AccessPointFailure, KtList<AccessPoint>>> watchAllFromProject(
      UniqueId projectId) async* {
    yield* _dataSource
        .watchAllFromProject(projectId.getOrCrash())
        .map(
          (snapshot) => right<AccessPointFailure, KtList<AccessPoint>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, KtList<AccessPoint>>> readAllFromProject(
      UniqueId projectId) async {
    return await _dataSource
        .readAllFromProject(projectId.getOrCrash())
        .then((dtoList) => right<AccessPointFailure, KtList<AccessPoint>>(
            dtoList.map((dto) => dto.toDomain())))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, Unit>> create(
      AccessPoint accessPoint) async {
    final accessPointDto = AccessPointDto.fromDomain(accessPoint);

    return await _dataSource
        .create(accessPointDto)
        .then((_) => right<AccessPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, Unit>> createNotExistingOnes(
      KtList<AccessPoint> accessPoints) async {
    final accessPointDtos = accessPoints
        .map((accessPoint) => AccessPointDto.fromDomain(accessPoint));

    return await _dataSource
        .addNotExistingOnes(accessPointDtos)
        .then((_) => right<AccessPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, AccessPoint>> readById(UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (accessPointDto) => right<AccessPointFailure, AccessPoint>(
            accessPointDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, Unit>> update(
      AccessPoint accessPoint) async {
    final projectDto = AccessPointDto.fromDomain(accessPoint);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<AccessPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<AccessPointFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then(
          (_) => right<AccessPointFailure, Unit>(unit),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const AccessPointFailure.unexpected());
        } else {
          return left(const AccessPointFailure.unexpected());
        }
      },
    );
  }
}

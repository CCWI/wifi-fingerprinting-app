import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/calibration_point.dart';
import '../../03_domain/failures/calibration_point_failure.dart';
import '../../03_domain/repositories/i_calibration_point_repository.dart';
import '../data_source/i_calibration_point_data_source.dart';
import '../dtos/calibration_point_dto.dart';

@LazySingleton(as: ICalibrationPointRepository)
class CalibrationPointRepositoryImpl implements ICalibrationPointRepository {
  final ICalibrationPointDataSource _dataSource;

  CalibrationPointRepositoryImpl(ICalibrationPointDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<CalibrationPointFailure, KtList<CalibrationPoint>>>
      watchAllFromProject(UniqueId projectId) async* {
    yield* _dataSource
        .watchAllFromProject(projectId.getOrCrash())
        .map(
          (snapshot) =>
              right<CalibrationPointFailure, KtList<CalibrationPoint>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, Unit>> create(
      CalibrationPoint calibrationPoint) async {
    final calibrationPointDto =
        CalibrationPointDto.fromDomain(calibrationPoint);

    return await _dataSource
        .create(calibrationPointDto)
        .then((_) => right<CalibrationPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, Unit>> updateRadioMap(
      UniqueId projectId) async {
    return await _dataSource
        .updateRadioMap(projectId.getOrCrash())
        .then((_) => right<CalibrationPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, CalibrationPoint>> readById(
      UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (calibrationPointDto) =>
              right<CalibrationPointFailure, CalibrationPoint>(
            calibrationPointDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, KtList<CalibrationPoint>>> readAllFromProject(UniqueId projectId) async {
    return await _dataSource
        .readAllFromProject(projectId.getOrCrash())
        .then((dtoList) => right<CalibrationPointFailure, KtList<CalibrationPoint>>(
            dtoList.map((dto) => dto.toDomain())))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, Unit>> update(
      CalibrationPoint calibrationPoint) async {
    final projectDto = CalibrationPointDto.fromDomain(calibrationPoint);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<CalibrationPointFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationPointFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then(
          (_) => right<CalibrationPointFailure, Unit>(unit),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationPointFailure.unexpected());
        } else {
          return left(const CalibrationPointFailure.unexpected());
        }
      },
    );
  }
}

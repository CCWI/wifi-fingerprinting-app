import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/calibration_fingerprint.dart';
import '../../03_domain/failures/calibration_fingerprint_failure.dart';
import '../../03_domain/repositories/i_calibration_fingerprint_repository.dart';
import '../data_source/i_calibration_fingerprint_data_source.dart';
import '../dtos/calibration_fingerprint_dto.dart';

@LazySingleton(as: ICalibrationFingerprintRepository)
class CalibrationFingerprintRepositoryImpl implements ICalibrationFingerprintRepository {
  final ICalibrationFingerprintDataSource _dataSource;

  CalibrationFingerprintRepositoryImpl(ICalibrationFingerprintDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>>
      watchAllFromProject(UniqueId projectId) async* {
    yield* _dataSource
        .watchAllFromProject(projectId.getOrCrash())
        .map(
          (snapshot) =>
              right<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>>
      watchAllFromCalibrationPoint(UniqueId calibrationPointId) async* {
    yield* _dataSource
        .watchAllFromCalibrationPoint(calibrationPointId.getOrCrash())
        .map(
          (snapshot) =>
              right<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationFingerprintFailure, Unit>> create(
      CalibrationFingerprint calibrationFingerprint) async {
    final calibrationFingerprintDto =
        CalibrationFingerprintDto.fromDomain(calibrationFingerprint);

    return await _dataSource
        .create(calibrationFingerprintDto)
        .then((_) => right<CalibrationFingerprintFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationFingerprintFailure, CalibrationFingerprint>> readById(
      UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (calibrationFingerprintDto) =>
              right<CalibrationFingerprintFailure, CalibrationFingerprint>(
            calibrationFingerprintDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationFingerprintFailure, Unit>> update(
      CalibrationFingerprint calibrationFingerprint) async {
    final projectDto = CalibrationFingerprintDto.fromDomain(calibrationFingerprint);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<CalibrationFingerprintFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<CalibrationFingerprintFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then((_) => right<CalibrationFingerprintFailure, Unit>(unit),)
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const CalibrationFingerprintFailure.unexpected());
        } else {
          return left(const CalibrationFingerprintFailure.unexpected());
        }
      },
    );
  }
}

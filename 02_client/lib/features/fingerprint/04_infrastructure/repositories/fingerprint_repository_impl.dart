import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/fingerprint.dart';
import '../../03_domain/failures/fingerprint_failure.dart';
import '../../03_domain/repositories/i_fingerprint_repository.dart';
import '../data_source/i_fingerprint_data_source.dart';
import '../dtos/fingerprint_dto.dart';

@LazySingleton(as: IFingerprintRepository)
class FingerprintRepositoryImpl implements IFingerprintRepository {
  final IFingerprintDataSource _dataSource;

  FingerprintRepositoryImpl(IFingerprintDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<FingerprintFailure, KtList<Fingerprint>>> watchAllFromProject(
      UniqueId projectId) async* {
    yield* _dataSource
        .watchAllFromProject(projectId.getOrCrash())
        .map(
          (snapshot) => right<FingerprintFailure, KtList<Fingerprint>>(
            snapshot.map(
              (dto) => dto.toDomain(),
            ),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FingerprintFailure, Unit>> create(
      Fingerprint fingerprint) async {
    final fingerprintDto = FingerprintDto.fromDomain(fingerprint);

    return await _dataSource
        .create(fingerprintDto)
        .then((_) => right<FingerprintFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FingerprintFailure, Fingerprint>> readById(UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (fingerprintDto) => right<FingerprintFailure, Fingerprint>(
            fingerprintDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FingerprintFailure, KtList<Fingerprint>>>
      readAllFingerprints() {
    return _dataSource
        .readAllFingerprints()
        .then((fingerprintDtos) =>
            right<FingerprintFailure, KtList<Fingerprint>>(
                fingerprintDtos.map((dto) => dto.toDomain()).kt.toList()))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FingerprintFailure, Unit>> update(
      Fingerprint fingerprint) async {
    final projectDto = FingerprintDto.fromDomain(fingerprint);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<FingerprintFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FingerprintFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then(
          (_) => right<FingerprintFailure, Unit>(unit),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const FingerprintFailure.unexpected());
        } else {
          return left(const FingerprintFailure.unexpected());
        }
      },
    );
  }
}

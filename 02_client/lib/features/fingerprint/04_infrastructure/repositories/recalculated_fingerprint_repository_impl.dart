import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../03_domain/entities/recalculated_fingerprint.dart';
import '../../03_domain/failures/fingerprint_failure.dart';
import '../../03_domain/repositories/i_recalculated_fingerprint_repository.dart';
import '../data_source/i_recalculated_fingerprint_data_source.dart';
import '../dtos/recalculated_fingerprint_dto.dart';

@LazySingleton(as: IRecalculatedFingerprintRepository)
class RecalculatedFingerprintRepositoryImpl
    implements IRecalculatedFingerprintRepository {
  final IRecalculatedFingerprintDataSource _dataSource;

  RecalculatedFingerprintRepositoryImpl(
      IRecalculatedFingerprintDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Future<Either<FingerprintFailure, Unit>> createRecalculatedFingerprints(
      KtList<RecalculatedFingerprint> fingerprints,
      String collectionName) async {
    final recalculatedFingerprintDtos = fingerprints
        .map((fp) => RecalculatedFingerprintDto.fromDomain(fp))
        .asList();

    return await _dataSource
        .createRecalculatedFingerprints(
            recalculatedFingerprintDtos, collectionName)
        .then((_) => right<FingerprintFailure, Unit>(unit))
        .catchError((e) {
      if (e is DataSourceException) {
        //TODO: handle exception properly
        return left(const FingerprintFailure.unexpected());
      } else {
        return left(const FingerprintFailure.unexpected());
      }
    });
  }
}

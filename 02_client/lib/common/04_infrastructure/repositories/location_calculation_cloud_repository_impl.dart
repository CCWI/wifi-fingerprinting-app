import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../features/fingerprint/03_domain/entities/fingerprint.dart';
import '../../../features/fingerprint/03_domain/failures/fingerprint_failure.dart';
import '../../../features/fingerprint/04_infrastructure/dtos/fingerprint_dto.dart';
import '../../03_domain/entities/calculate_position_request/calculate_position_request.dart';
import '../../03_domain/repositories/i_location_calculation_repository.dart';
import '../../05_utils/constants.dart';
import '../dtos/calculate_position_request/calculate_position_request_dto.dart';

@LazySingleton(as: ILocationCalculationCloudRepository)
class LocationCalculationCloudRepository
    implements ILocationCalculationCloudRepository {
  @override
  Future<Either<FingerprintFailure, Fingerprint>> calculatePositionOnCloud(
      CalculatePositionRequest calculatePositionRequest) async {
    try {
      final calculatePositionRequestDto =
          CalculatePositionRequestDto.fromDomain(calculatePositionRequest);
      print(calculatePositionRequestDto.toJson().toString());

      final HttpsCallable callable = CloudFunctions.instance
          .getHttpsCallable(functionName: Constants.calculatePositionFunction)
            ..timeout = const Duration(seconds: 60);

      return await callable.call(calculatePositionRequestDto.toJson()).then(
            (response) => right<FingerprintFailure, Fingerprint>(
              FingerprintDto.fromJson(
                Map<String, dynamic>.from(response.data),
              ).toDomain(),
            ),
          );
    } catch (e) {
      return left<FingerprintFailure, Fingerprint>(
          const FingerprintFailure.unexpected());
    }
  }
}

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/05_utils/constants.dart';
import '../../03_domain/entities/create_calibration_fingerprint_request.dart';
import '../../03_domain/failures/calibration_fingerprint_failure.dart';
import '../../03_domain/repositories/i_calibration_fingerprint_cloud_repository.dart';
import '../dtos/create_calibration_fingerprint_request_dto.dart';

@dev
@Injectable(as: ICalibrationFingerprintCloudRepository)
class CalibrationFingerprintCloudRepository
    implements ICalibrationFingerprintCloudRepository {
  @override
  Future<Either<CalibrationFingerprintFailure, Unit>> create(
      CreateCalibrationFingerprintRequest
          createCalibrationFingerprintRequest) async {
    try {
      final createCalibrationFingerprintRequestDto =
          CreateCalibrationFingerprintRequestDto.fromDomain(
              createCalibrationFingerprintRequest);

      final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
          functionName: Constants.createCalibrationFingerprintFunction)
        ..timeout = const Duration(seconds: 60);

      final json = createCalibrationFingerprintRequestDto.toJson();
      debugPrint(json.toString());

      await callable.call(json);

      return right<CalibrationFingerprintFailure, Unit>(unit);
    } catch (e) {
      return left<CalibrationFingerprintFailure, Unit>(
          const CalibrationFingerprintFailure.unexpected());
    }
  }
}

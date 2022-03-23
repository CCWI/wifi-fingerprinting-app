import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../03_domain/entities/create_calibration_fingerprint_request.dart';
import '../../../03_domain/failures/calibration_fingerprint_failure.dart';
import '../../../03_domain/repositories/i_calibration_fingerprint_cloud_repository.dart';
import 'i_calibration_fingerprint_service.dart';

@Injectable(as: ICalibrationFingerprintService, env: [Environment.dev])
class CalibrationFingerprintCloudService
    implements ICalibrationFingerprintService {
  final ICalibrationFingerprintCloudRepository _cpCloudRepository;

  CalibrationFingerprintCloudService({
    @required ICalibrationFingerprintCloudRepository cpCloudRepository,
  })   : assert(cpCloudRepository != null),
        _cpCloudRepository = cpCloudRepository;

  @override
  Future<Either<CalibrationFingerprintFailure, Unit>>
      createCalibrationFingerprintAndUpdateDatabase(
          KtList<Signal> receivedSignals,
          UniqueId projectId,
          UniqueId calibrationPointId) async {
    final createCalibrationFingerprintRequest =
        CreateCalibrationFingerprintRequest(
            projectId: projectId,
            calibrationPointId: calibrationPointId,
            receivedSignals: receivedSignals);

    final calibrationFingerprintCreation =
        await _cpCloudRepository.create(createCalibrationFingerprintRequest);

    return calibrationFingerprintCreation.fold(
        (failure) => left<CalibrationFingerprintFailure, Unit>(failure),
        (success) => right<CalibrationFingerprintFailure, Unit>(unit));
  }
}

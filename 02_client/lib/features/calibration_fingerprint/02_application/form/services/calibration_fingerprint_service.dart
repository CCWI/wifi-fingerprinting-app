import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../../../access_point/03_domain/entities/access_point.dart';
import '../../../../access_point/03_domain/repositories/i_access_point_repository.dart';
import '../../../../calibration_point/03_domain/repositories/i_calibration_point_repository.dart';
import '../../../03_domain/entities/calibration_fingerprint.dart';
import '../../../03_domain/failures/calibration_fingerprint_failure.dart';
import '../../../03_domain/repositories/i_calibration_fingerprint_repository.dart';
import 'i_calibration_fingerprint_service.dart';

@Injectable(
    as: ICalibrationFingerprintService,
    env: [Environment.prod, Constants.local_dev])
class CalibrationFingerprintService implements ICalibrationFingerprintService {
  final IAccessPointRepository _apRepository;
  final ICalibrationFingerprintRepository _cfRepository;
  final ICalibrationPointRepository _cpRepository;

  CalibrationFingerprintService({
    @required IAccessPointRepository apRepository,
    @required ICalibrationFingerprintRepository cfRepository,
    @required ICalibrationPointRepository cpRepository,
  })  : assert(apRepository != null),
        assert(cfRepository != null),
        assert(cpRepository != null),
        _apRepository = apRepository,
        _cfRepository = cfRepository,
        _cpRepository = cpRepository;

  @override
  Future<Either<CalibrationFingerprintFailure, Unit>>
      createCalibrationFingerprintAndUpdateDatabase(
          KtList<Signal> receivedSignals,
          UniqueId projectId,
          UniqueId calibrationPointId) async {
    final calibrationFingerprintToBeCreated = CalibrationFingerprint(
      id: UniqueId(),
      calibrationPointId: calibrationPointId,
      projectId: projectId,
      receivedSignals: _convertToMap(receivedSignals),
      timeOfCreation: DateTime.now(),
    );

    final signalsToAccessPoints =
        _convertToAccessPoints(receivedSignals, projectId);

    final accessPointCreation =
        await _apRepository.createNotExistingOnes(signalsToAccessPoints);

    return await accessPointCreation.fold((failure) async {
      return left<CalibrationFingerprintFailure, Unit>(
          CalibrationFingerprintFailure.unableToUpdateAccessPoints(failure));
    }, (success) async {
      final calibrationFingerprintCreation =
          await _cfRepository.create(calibrationFingerprintToBeCreated);

      return await calibrationFingerprintCreation.fold((failure) async {
        return left<CalibrationFingerprintFailure, Unit>(failure);
      }, (success) async {
        final radioMapUpdate = await _cpRepository.updateRadioMap(projectId);

        return radioMapUpdate.fold((failure) {
          return left<CalibrationFingerprintFailure, Unit>(
              CalibrationFingerprintFailure.unableToUpdateRadioMap(failure));
        }, (success) {
          return right<CalibrationFingerprintFailure, Unit>(unit);
        });
      });
    });
  }

  KtList<AccessPoint> _convertToAccessPoints(
      KtList<Signal> signals, UniqueId projectId) {
    return signals
        .map((signal) => AccessPoint(
              id: UniqueId(),
              name: Name(signal.ssid.getOrCrash()),
              projectId: projectId,
              bssid: signal.bssid,
              ssid: signal.ssid,
            ))
        .toList();
  }

  KtMap<BSSID, RSS> _convertToMap(KtList<Signal> signals) {
    return Map<BSSID, RSS>.fromIterable(
      signals.iter,
      key: (s) => s.bssid,
      value: (s) => s.rss,
    ).kt.toMap();
  }
}

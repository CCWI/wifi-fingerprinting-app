import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../features/access_point/03_domain/repositories/i_access_point_repository.dart';
import '../../../../features/calibration_point/03_domain/repositories/i_calibration_point_repository.dart';
import '../../../../features/cell/03_domain/services/i_cell_service.dart';
import '../../../../features/fingerprint/03_domain/entities/fingerprint.dart';
import '../../../../features/fingerprint/03_domain/entities/recalculated_fingerprint.dart';
import '../../../../features/fingerprint/03_domain/repositories/i_fingerprint_repository.dart';
import '../../../../features/project/03_domain/repositories/i_project_repository.dart';
import '../../../05_utils/constants.dart';
import '../../entities/settings/distance_metrics.dart';
import '../../entities/settings/settings.dart';
import '../../entities/signal/signal.dart';
import '../../value_objects/value_objects.dart';
import 'distance_calculator/distance_calculator_factory.dart';
import 'i_location_calculation_service.dart';
import 'position_calculator/position_calculator_factory.dart';

@Injectable(
    as: ILocationCalculationService,
    env: [Environment.prod, Constants.local_dev])
class LocalLocationCalculationService implements ILocationCalculationService {
  final ICalibrationPointRepository _cpRepository;
  final IAccessPointRepository _apRepository;
  final ICellService _cService;
  final IFingerprintRepository _fRepository;

  LocalLocationCalculationService({
    @required ICalibrationPointRepository cpRepository,
    @required IAccessPointRepository apRepository,
    @required IProjectRepository pRepository,
    @required IFingerprintRepository fRepository,
    @required ICellService cService,
  })  : assert(cpRepository != null),
        assert(apRepository != null),
        assert(pRepository != null),
        assert(fRepository != null),
        assert(cService != null),
        _cpRepository = cpRepository,
        _apRepository = apRepository,
        _fRepository = fRepository,
        _cService = cService;

  @override
  Future<Fingerprint> calculateLocation(KtList<Signal> scannedSignals,
      UniqueId projectId, Settings settings) async {
    final receivedRSSDetails =
        await _synchronizeRadioDetailsWithRadioMap(scannedSignals, projectId);

    final failureOrCalibrationPoints =
        await _cpRepository.readAllFromProject(projectId);

    return await failureOrCalibrationPoints.fold((failure) => null,
        (calibrationPoints) async {
      // calculate location distances
      final distanceCalculator =
          DistanceCalculatorFactory.getDistanceMetric(DistanceMetric.eculidean);

      final locationDistances = distanceCalculator.calculateDistances(
          calibrationPoints.asList(), receivedRSSDetails);

      //calculate position
      final positionCalculator =
          PositionCalculatorFactory.getPositioningAlgorithm(
              settings.locationAlgorithm);

      final calculatedPosition = positionCalculator.calculate(
          locationDistances, settings.knnKValue.getOrCrash());
      //get cells that include position
      final cells = await _cService.getCellsThatIncludePosition(
          calculatedPosition, projectId);

      return Fingerprint(
          id: UniqueId(),
          projectId: projectId,
          timeOfCreation: DateTime.now(),
          currentSettings: settings,
          locationDistances: locationDistances.kt.toList(),
          cellsIncludingPosition: cells,
          receivedNetworks: receivedRSSDetails.kt.toMap(),
          calculatedPosition: calculatedPosition);
    });
  }

  @override
  Future<KtList<RecalculatedFingerprint>> recalculateAllFingerprints(
      Settings settings) async {
    final fingerprintsOrFailure = await _fRepository.readAllFingerprints();

    final positionCalculator =
        PositionCalculatorFactory.getPositioningAlgorithm(
            settings.locationAlgorithm);

    return await fingerprintsOrFailure.fold((failure) => null,
        (fingerprints) async {
      try {
        KtMutableList<RecalculatedFingerprint> recalculatedFingerprints =
            KtMutableList.empty();

        await Future.forEach(fingerprints.iter, (Fingerprint fp) async {
          final locationDistances = fp.locationDistances;

          final calculatedPosition = positionCalculator.calculate(
              locationDistances.asList(), settings.knnKValue.getOrCrash());

          final cells = await _cService.getCellsThatIncludePosition(
              calculatedPosition, fp.projectId);

          final recalculatedFingerprint = RecalculatedFingerprint(
            id: UniqueId(),
            fingerprintBaseId: fp.id,
            projectId: fp.projectId,
            timeOfCreation: DateTime.now(),
            currentSettings: settings,
            locationDistances: fp.locationDistances,
            cellsIncludingPosition: cells,
            receivedNetworks: fp.receivedNetworks,
            calculatedPosition: calculatedPosition,
          );

          recalculatedFingerprints.add(recalculatedFingerprint);
        });

        return recalculatedFingerprints.toList();
      } catch (e) {
        return null;
      }
    });
  }

  Future<Map<BSSID, RSS>> _synchronizeRadioDetailsWithRadioMap(
      KtList<Signal> scannedSignals, UniqueId projectId) async {
    Map<BSSID, RSS> observedRSSValues = _signalsToMap(scannedSignals);
    Map<BSSID, RSS> syncedRSSValues = Map<BSSID, RSS>();

    final failureOrAccessPoints =
        await _apRepository.readAllFromProject(projectId);

    return failureOrAccessPoints.fold(
      (f) => null,
      (accessPoints) {
        int notReceivedCounter = 0;

        accessPoints.forEach((ap) {
          if (!observedRSSValues.containsKey(ap.bssid)) {
            syncedRSSValues[ap.bssid] = RSS(RSS.notReceived);
            notReceivedCounter++;
          } else {
            syncedRSSValues[ap.bssid] = observedRSSValues[ap.bssid];
          }
        });

        if (notReceivedCounter == accessPoints.size) {
          return null;
        }

        return syncedRSSValues;
      },
    );
  }

  Map<BSSID, RSS> _signalsToMap(KtList<Signal> signals) {
    Map<BSSID, RSS> mapToReturn = Map<BSSID, RSS>();

    signals.forEach((signal) {
      mapToReturn[signal.bssid] = signal.rss;
    });

    return mapToReturn;
  }
}

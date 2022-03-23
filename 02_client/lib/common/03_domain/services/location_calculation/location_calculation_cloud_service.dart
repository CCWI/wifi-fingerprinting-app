import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../../features/fingerprint/03_domain/entities/fingerprint.dart';
import '../../../../features/fingerprint/03_domain/entities/recalculated_fingerprint.dart';
import '../../entities/calculate_position_request/calculate_position_request.dart';
import '../../entities/settings/settings.dart';
import '../../entities/signal/signal.dart';
import '../../repositories/i_location_calculation_repository.dart';
import '../../value_objects/value_objects.dart';
import 'i_location_calculation_service.dart';

@prod
@Injectable(as: ILocationCalculationService, env: [Environment.dev])
class LocationCalculationCloudService implements ILocationCalculationService {
  final ILocationCalculationCloudRepository _lcCloudRepository;

  LocationCalculationCloudService({
    @required ILocationCalculationCloudRepository lcCloudRepository,
  })  : assert(lcCloudRepository != null),
        _lcCloudRepository = lcCloudRepository;

  @override
  Future<Fingerprint> calculateLocation(KtList<Signal> scannedSignals,
      UniqueId projectId, Settings settings) async {
    final calculatePositionRequest = CalculatePositionRequest(
      projectId: projectId,
      receivedSignals: scannedSignals,
      settings: settings,
    );

    final positionCalculation = await _lcCloudRepository
        .calculatePositionOnCloud(calculatePositionRequest);

    Fingerprint fingerprintToReturn;

    positionCalculation.fold(
        (failure) => null, (fingerprint) => fingerprintToReturn = fingerprint);

    return fingerprintToReturn;
  }

  @override
  Future<KtList<RecalculatedFingerprint>> recalculateAllFingerprints(
      Settings settings) {
    // TODO: implement recalculateAllFingerprints
    throw UnimplementedError();
  }
}

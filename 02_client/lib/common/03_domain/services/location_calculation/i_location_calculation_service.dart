import 'package:kt_dart/collection.dart';

import '../../../../features/fingerprint/03_domain/entities/fingerprint.dart';
import '../../../../features/fingerprint/03_domain/entities/recalculated_fingerprint.dart';
import '../../entities/settings/settings.dart';
import '../../entities/signal/signal.dart';
import '../../value_objects/value_objects.dart';

abstract class ILocationCalculationService {
  Future<Fingerprint> calculateLocation(
      KtList<Signal> scannedSignals, UniqueId projectId, Settings settings);

  Future<KtList<RecalculatedFingerprint>> recalculateAllFingerprints(
      Settings settings);
}

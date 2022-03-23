import '../dtos/recalculated_fingerprint_dto.dart';

abstract class IRecalculatedFingerprintDataSource {
  Future<void> createRecalculatedFingerprints(
      List<RecalculatedFingerprintDto> fingerprints, String collectionName);
}

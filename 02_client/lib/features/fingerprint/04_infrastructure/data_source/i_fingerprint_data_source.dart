import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../dtos/fingerprint_dto.dart';

abstract class IFingerprintDataSource implements IDataSource<FingerprintDto> {
  Future<List<FingerprintDto>> readAllFingerprints();
}

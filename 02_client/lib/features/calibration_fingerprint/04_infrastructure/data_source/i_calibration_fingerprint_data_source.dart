import 'package:kt_dart/collection.dart';

import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../dtos/calibration_fingerprint_dto.dart';

abstract class ICalibrationFingerprintDataSource implements IDataSource<CalibrationFingerprintDto> {
  Stream<KtList<CalibrationFingerprintDto>> watchAllFromCalibrationPoint(String calibrationPointId);
}
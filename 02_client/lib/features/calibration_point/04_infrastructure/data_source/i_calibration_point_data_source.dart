import 'package:kt_dart/collection.dart';

import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../dtos/calibration_point_dto.dart';

abstract class ICalibrationPointDataSource implements IDataSource<CalibrationPointDto> {
  Future updateRadioMap(String projectId);
  Future<KtList<CalibrationPointDto>> readAllFromProject(String projectId);
}
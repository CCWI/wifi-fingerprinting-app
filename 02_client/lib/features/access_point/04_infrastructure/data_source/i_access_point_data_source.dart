import 'package:kt_dart/kt.dart';

import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../dtos/access_point_dto.dart';

abstract class IAccessPointDataSource implements IDataSource<AccessPointDto> {
  Future<KtList<AccessPointDto>> readAllFromProject(String projectId);
  Future addNotExistingOnes(KtList<AccessPointDto> accessPoints);
}
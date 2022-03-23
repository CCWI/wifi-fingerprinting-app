import 'package:kt_dart/kt.dart';

import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../dtos/cell_dto.dart';

abstract class ICellDataSource implements IDataSource<CellDto> {
  Future<KtList<CellDto>> readAllFromProject(String projectId);
}
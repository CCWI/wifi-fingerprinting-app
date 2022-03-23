import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/cell.dart';

abstract class ICellService {
  Future<KtList<Cell>> getCellsThatIncludePosition(
      Position position, UniqueId projectId);
}

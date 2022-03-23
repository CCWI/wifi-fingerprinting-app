import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vector_math/vector_math.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/line.dart';
import '../../../project/03_domain/repositories/i_project_repository.dart';
import '../entities/cell.dart';
import '../repositories/i_cell_repository.dart';
import 'i_cell_service.dart';

@LazySingleton(as: ICellService)
class CellService implements ICellService {
  final ICellRepository _cRepository;
  final IProjectRepository _pRepository;

  CellService({
    @required ICellRepository cRepository,
    @required IProjectRepository pRepository,
  })  : assert(cRepository != null),
        assert(pRepository != null),
        _cRepository = cRepository,
        _pRepository = pRepository;

  @override
  Future<KtList<Cell>> getCellsThatIncludePosition(
      Position position, UniqueId projectId) async {
    KtMutableList<Cell> cellsToReturn = KtMutableList.empty();
    final pointVector =
        Vector2(position.x.getOrCrash(), position.y.getOrCrash());
    double cartesianWidth;

    final failureOrCells = await _cRepository.readAllFromProject(projectId);
    final failureOrCartesianDimensions =
        await _pRepository.readCartesianDimensionsById(projectId);

    failureOrCartesianDimensions.fold((_) {
      cartesianWidth = 5000;
    }, (cartesianDimensions) {
      cartesianWidth = cartesianDimensions.dx + 10;
    });

    failureOrCells.fold((l) => null, (cells) {
      cells.forEach((cell) {
        final lines = Line.cellIntoLines(cell);
        final pointLine = Line.originDirection(pointVector,
            Vector2(pointVector.x + cartesianWidth, pointVector.y));

        if (_getNumberOfIntersections(pointLine, lines) % 2 == 1) {
          cellsToReturn.add(cell);
        }
      });
    });

    return cellsToReturn.toList();
  }

  int _getNumberOfIntersections(Line line, List<Line> linesToInterSectWith) {
    int numberOfIntersections = 0;
    linesToInterSectWith.forEach((lineToIntersect) {
      if (line.intersects(lineToIntersect)) numberOfIntersections++;
    });
    return numberOfIntersections;
  }
}

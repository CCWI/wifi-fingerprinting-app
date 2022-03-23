import 'package:vector_math/vector_math.dart';

import '../../features/cell/03_domain/entities/cell.dart';

class Line {
  final Vector2 _origin;
  final Vector2 _direction;

  Vector2 get origin => _origin;
  Vector2 get direction => _direction;
  double get length => _origin.distanceTo(_direction);

  Line()
      : _origin = Vector2.zero(),
        _direction = Vector2.zero();

  Line.copy(Line other)
      : _origin = Vector2.copy(other._origin),
        _direction = Vector2.copy(other._direction);

  Line.originDirection(Vector2 origin, Vector2 direction)
      : _origin = Vector2.copy(origin),
        _direction = Vector2.copy(direction);

  static List<Line> cellIntoLines(Cell cell) {
    final List<Line> linesToReturn = List<Line>();
    final numberOfVertices = cell.vertices.getOrCrash().size;
    final vertices = cell.vertices.getOrCrash();
    List<Vector2> sortedVertices;

    if (numberOfVertices == 2) {
      Vector2 temp1 = Vector2(
        vertices.get(0).x.getOrCrash(),
        vertices.get(0).y.getOrCrash(),
      );
      Vector2 temp2 = Vector2(
        vertices.get(1).x.getOrCrash(),
        vertices.get(1).y.getOrCrash(),
      );

      if (temp1.x == temp2.x || temp1.y == temp2.y) {
        return linesToReturn.toList();
      } else if (temp1.x < temp2.x) {
        if (temp1.y > temp2.y) {
          sortedVertices = [
            temp1,
            Vector2(temp2.x, temp1.y),
            temp2,
            Vector2(temp1.x, temp2.y),
          ];
        } else {
          sortedVertices = [
            Vector2(temp1.x, temp2.y),
            temp2,
            Vector2(temp2.x, temp1.y),
            temp1,
          ];
        }
      } else {
        if (temp1.y < temp2.y) {
          sortedVertices = [
            temp2,
            Vector2(temp1.x, temp2.y),
            temp1,
            Vector2(temp2.x, temp1.y),
          ];
        } else {
          sortedVertices = [
            Vector2(temp2.x, temp1.y),
            temp1,
            Vector2(temp1.x, temp2.y),
            temp2,
          ];
        }
      }
    } else if (numberOfVertices == 3) {
      sortedVertices = [
        Vector2(
          vertices.get(0).x.getOrCrash(),
          vertices.get(0).y.getOrCrash(),
        ),
        Vector2(
          vertices.get(1).x.getOrCrash(),
          vertices.get(1).y.getOrCrash(),
        ),
        Vector2(
          vertices.get(2).x.getOrCrash(),
          vertices.get(2).y.getOrCrash(),
        ),
      ];
    } else if (numberOfVertices == 4) {
      sortedVertices = [
        Vector2(
          vertices.get(0).x.getOrCrash(),
          vertices.get(0).y.getOrCrash(),
        ),
        Vector2(
          vertices.get(1).x.getOrCrash(),
          vertices.get(1).y.getOrCrash(),
        ),
        Vector2(
          vertices.get(2).x.getOrCrash(),
          vertices.get(2).y.getOrCrash(),
        ),
        Vector2(
          vertices.get(3).x.getOrCrash(),
          vertices.get(3).y.getOrCrash(),
        ),
      ];
    } else {
      return linesToReturn.toList();
    }

    for (int i = 0; i < sortedVertices.length; i++) {
      if((i + 1) < sortedVertices.length) {
        linesToReturn.add(Line.originDirection(sortedVertices[i], sortedVertices[i + 1]));
      } else {
        linesToReturn.add(Line.originDirection(sortedVertices[i], sortedVertices[0]));
      }
    }

    return linesToReturn;
  }

  void copyFrom(Line other) {
    _origin.setFrom(other._origin);
    _direction.setFrom(other._direction);
  }

  bool intersects(Line other) {
    return (_ccw(this._origin, this._direction, other._origin) *
                _ccw(this._origin, this._direction, other._direction) <=
            0) &&
        (_ccw(other._origin, other._direction, this._origin) *
                _ccw(other._origin, other._direction, this._direction) <=
            0);
  }

  int _ccw(Vector2 a, Vector2 b, Vector2 c) {
    double dx1 = b.x - a.x;
    double dy1 = b.y - a.y;
    double dx2 = c.x - a.x;
    double dy2 = c.y - a.y;

    if ((dx1 * dy2) > (dy1 * dx2)) {
      return 1;
    } else if ((dx1 * dy2) < (dy1 * dx2)) {
      return -1;
    } else {
      if (((dx1 * dx2) < 0) ^ ((dy1 * dy2) < 0)) {
        return -1;
      } else if (((dx1 * dx1) + (dy1 * dy1)) >= ((dx2 * dx2) + (dy2 * dy2))) {
        return 0;
      } else {
        return 1;
      }
    }
  }
}

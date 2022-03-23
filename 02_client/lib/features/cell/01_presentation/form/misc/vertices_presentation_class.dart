import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/03_domain/entities/position/position.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';

part 'vertices_presentation_class.freezed.dart';

@freezed
abstract class VertexPrimitive with _$VertexPrimitive {
  const factory VertexPrimitive({
    @required String x,
    @required String y,
    @required String floor,
  }) = _VertexPrimitive;

  factory VertexPrimitive.empty() => VertexPrimitive(
        x: '',
        y: '',
        floor: '',
      );

  factory VertexPrimitive.fromDomain(Position vertex) => VertexPrimitive(
        x: vertex.x.getOrCrash().toString(),
        y: vertex.y.getOrCrash().toString(),
        floor: vertex.floor.getOrCrash().toString(),
      );
}

extension VertexPrimitiveX on VertexPrimitive {
  Position toDomain([Offset maxCartesianDimensions]) {
    return Position(
      x: maxCartesianDimensions != null
          ? CoordinateValue.fromStringWithMax(x, maxCartesianDimensions.dx)
          : CoordinateValue.fromString(x),
      y: maxCartesianDimensions != null
          ? CoordinateValue.fromStringWithMax(y, maxCartesianDimensions.dy)
          : CoordinateValue.fromString(y),
      floor: FloorNumber.fromString(floor),
    );
  }
}

class Vertices extends ValueNotifier<KtList<VertexPrimitive>> {
  Vertices() : super(emptyList<VertexPrimitive>());
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/03_domain/entities/floormap/floor_map.dart';
import '../../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';

part 'floors_presentation_class.freezed.dart';

@freezed
abstract class FloorMapPrimitive with _$FloorMapPrimitive {
  const factory FloorMapPrimitive({
    @required String imagePath,
    @required UniqueId id,
    @required String floor,
    @required String imageScale,
  }) = _FloorMapPrimitive;

  factory FloorMapPrimitive.empty() => FloorMapPrimitive(
        imagePath: '',
        id: UniqueId(),
        floor: '',
        imageScale: '',
      );

  factory FloorMapPrimitive.fromDomain(FloorMap floorMapValue) =>
      FloorMapPrimitive(
        imagePath: floorMapValue.imagePath.getOrCrash(),
        id: floorMapValue.id,
        floor: floorMapValue.floor.getOrCrash().toString(),
        imageScale: floorMapValue.imageScale.getOrCrash().toString(),
      );
}

extension FloorMapPrimitiveX on FloorMapPrimitive {
  FloorMap toDomain() {
    return FloorMap(
      imagePath: Path(imagePath),
      id: id,
      floor: FloorNumber.fromString(floor),
      imageScale: Scale.fromString(imageScale),
    );
  }
}

class Floors extends ValueNotifier<KtList<FloorMapPrimitive>> {
  Floors() : super(emptyList<FloorMapPrimitive>());
}

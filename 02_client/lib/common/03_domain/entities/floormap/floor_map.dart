import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../failures/failures.dart';
import '../../value_objects/floor_map_value_objects.dart';
import '../../value_objects/value_objects.dart';

part 'floor_map.freezed.dart';

@freezed
abstract class FloorMap with _$FloorMap {
  const factory FloorMap({
    @required UniqueId id,
    @required Path imagePath,
    @required FloorNumber floor,
    @required Scale imageScale,
  }) = _FloorMap;

  factory FloorMap.empty() => FloorMap(
        id: UniqueId(),
        imagePath: Path.empty(),
        floor: FloorNumber.fromString(''),
        imageScale: Scale.fromString(''),
      );
}

extension FloorMapX on FloorMap {
  Option<ValueFailure<dynamic>> get failureOption {
    return imagePath.failureOrUnit
        .andThen(floor.failureOrUnit)
        .andThen(imageScale.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

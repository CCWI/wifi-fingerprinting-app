import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../03_domain/entities/floormap/floor_map.dart';
import '../../../03_domain/value_objects/floor_map_value_objects.dart';
import '../../../03_domain/value_objects/value_objects.dart';

part 'floor_map_dto.freezed.dart';
part 'floor_map_dto.g.dart';

@freezed
abstract class FloorMapDto with _$FloorMapDto {
  factory FloorMapDto({
    @required String id,
    @required String imagePath,
    @required int floor,
    @required int imageScale,
  }) = _FloorMapDto;

  factory FloorMapDto.fromDomain(FloorMap floorMap) {
    return FloorMapDto(
      id: floorMap.id.getOrCrash(),
      imagePath: floorMap.imagePath.getOrCrash(),
      floor: floorMap.floor.getOrCrash(),
      imageScale: floorMap.imageScale.getOrCrash(),
    );
  }

  factory FloorMapDto.fromJson(Map<String, dynamic> json) =>
      _$FloorMapDtoFromJson(json);
}

extension FloorMapDtoX on FloorMapDto {
  FloorMap toDomain() {
    return FloorMap(
      imagePath: Path(imagePath),
      id: UniqueId.fromFirebaseId(id),
      floor: FloorNumber(floor),
      imageScale: Scale(imageScale),
    );
  }
}

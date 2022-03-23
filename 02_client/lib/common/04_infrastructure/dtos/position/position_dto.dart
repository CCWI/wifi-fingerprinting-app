import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../03_domain/entities/position/position.dart';
import '../../../03_domain/value_objects/value_objects.dart';

part 'position_dto.freezed.dart';
part 'position_dto.g.dart';

@freezed
abstract class PositionDto with _$PositionDto {
  factory PositionDto({
    @required double x,
    @required double y,
    @required int floor,
  }) = _PositionDto;

  factory PositionDto.fromDomain(Position position) {
    return PositionDto(
      x: position.x.getOrCrash(),
      y: position.y.getOrCrash(),
      floor: position.floor.getOrCrash(),
    );
  }

  factory PositionDto.fromJson(Map<String, dynamic> json) =>
      _$PositionDtoFromJson(json);
}

extension PositionDtoX on PositionDto {
  Position toDomain() {
    return Position(
        x: CoordinateValue(x),
        y: CoordinateValue(y),
        floor: FloorNumber(floor));
  }
}

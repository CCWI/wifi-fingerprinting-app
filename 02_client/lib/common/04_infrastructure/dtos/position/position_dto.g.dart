// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionDto _$_$_PositionDtoFromJson(Map json) {
  return _$_PositionDto(
    x: (json['x'] as num)?.toDouble(),
    y: (json['y'] as num)?.toDouble(),
    floor: json['floor'] as int,
  );
}

Map<String, dynamic> _$_$_PositionDtoToJson(_$_PositionDto instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'floor': instance.floor,
    };

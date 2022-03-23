// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_map_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FloorMapDto _$_$_FloorMapDtoFromJson(Map json) {
  return _$_FloorMapDto(
    id: json['id'] as String,
    imagePath: json['imagePath'] as String,
    floor: json['floor'] as int,
    imageScale: json['imageScale'] as int,
  );
}

Map<String, dynamic> _$_$_FloorMapDtoToJson(_$_FloorMapDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'floor': instance.floor,
      'imageScale': instance.imageScale,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CellDto _$_$_CellDtoFromJson(Map json) {
  return _$_CellDto(
    id: json['id'] as String,
    projectId: json['projectId'] as String,
    name: json['name'] as String,
    vertices: (json['vertices'] as List)
        ?.map((e) => e == null
            ? null
            : PositionDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CellDtoToJson(_$_CellDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'name': instance.name,
      'vertices': instance.vertices?.map((e) => e?.toJson())?.toList(),
    };

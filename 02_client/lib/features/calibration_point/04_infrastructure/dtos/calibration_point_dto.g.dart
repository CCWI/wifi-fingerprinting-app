// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calibration_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalibrationPointDto _$_$_CalibrationPointDtoFromJson(Map json) {
  return _$_CalibrationPointDto(
    id: json['id'] as String,
    projectId: json['projectId'] as String,
    name: json['name'] as String,
    radioMap: (json['radioMap'] as Map)?.map(
      (k, e) => MapEntry(k as String, (e as num)?.toDouble()),
    ),
    position: json['position'] == null
        ? null
        : PositionDto.fromJson((json['position'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_CalibrationPointDtoToJson(
        _$_CalibrationPointDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'name': instance.name,
      'radioMap': instance.radioMap,
      'position': instance.position?.toJson(),
    };

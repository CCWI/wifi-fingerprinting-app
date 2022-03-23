// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDto _$_$_ProjectDtoFromJson(Map json) {
  return _$_ProjectDto(
    id: json['id'] as String,
    name: json['name'] as String,
    floors: (json['floors'] as List)
        ?.map((e) => e == null
            ? null
            : FloorMapDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    xLength: (json['xLength'] as num)?.toDouble(),
    yLength: (json['yLength'] as num)?.toDouble(),
    registeredAccessPoints: json['registeredAccessPoints'] as int,
    registeredCalibrationPoints: json['registeredCalibrationPoints'] as int,
    registeredCalibrationFingerprints:
        json['registeredCalibrationFingerprints'] as int,
    registeredFingerprints: json['registeredFingerprints'] as int,
    registeredCells: json['registeredCells'] as int,
  );
}

Map<String, dynamic> _$_$_ProjectDtoToJson(_$_ProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'floors': instance.floors?.map((e) => e?.toJson())?.toList(),
      'xLength': instance.xLength,
      'yLength': instance.yLength,
      'registeredAccessPoints': instance.registeredAccessPoints,
      'registeredCalibrationPoints': instance.registeredCalibrationPoints,
      'registeredCalibrationFingerprints':
          instance.registeredCalibrationFingerprints,
      'registeredFingerprints': instance.registeredFingerprints,
      'registeredCells': instance.registeredCells,
    };

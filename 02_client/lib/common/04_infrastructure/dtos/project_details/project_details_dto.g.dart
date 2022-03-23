// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDetailsDto _$_$_ProjectDetailsDtoFromJson(Map json) {
  return _$_ProjectDetailsDto(
    projectId: json['projectId'] as String,
    xMaxValue: (json['xMaxValue'] as num)?.toDouble(),
    yMaxValue: (json['yMaxValue'] as num)?.toDouble(),
    floors: (json['floors'] as List)
        ?.map((e) => e == null
            ? null
            : FloorMapDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProjectDetailsDtoToJson(
        _$_ProjectDetailsDto instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'xMaxValue': instance.xMaxValue,
      'yMaxValue': instance.yMaxValue,
      'floors': instance.floors?.map((e) => e?.toJson())?.toList(),
    };

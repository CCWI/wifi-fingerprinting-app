// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_distance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDistanceDto _$_$_LocationDistanceDtoFromJson(Map json) {
  return _$_LocationDistanceDto(
    calibrationPointId: json['calibrationPointId'] as String,
    calibrationPointName: json['calibrationPointName'] as String,
    calibrationPointPosition: json['calibrationPointPosition'] == null
        ? null
        : PositionDto.fromJson((json['calibrationPointPosition'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    distance: (json['distance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationDistanceDtoToJson(
        _$_LocationDistanceDto instance) =>
    <String, dynamic>{
      'calibrationPointId': instance.calibrationPointId,
      'calibrationPointName': instance.calibrationPointName,
      'calibrationPointPosition': instance.calibrationPointPosition?.toJson(),
      'distance': instance.distance,
    };

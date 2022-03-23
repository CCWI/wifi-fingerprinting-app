// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessPointDto _$_$_AccessPointDtoFromJson(Map json) {
  return _$_AccessPointDto(
    id: json['id'] as String,
    projectId: json['projectId'] as String,
    name: json['name'] as String,
    ssid: json['ssid'] as String,
    bssid: json['bssid'] as String,
  );
}

Map<String, dynamic> _$_$_AccessPointDtoToJson(_$_AccessPointDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'name': instance.name,
      'ssid': instance.ssid,
      'bssid': instance.bssid,
    };

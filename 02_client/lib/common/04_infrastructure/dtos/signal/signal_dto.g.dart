// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignalDto _$_$_SignalDtoFromJson(Map json) {
  return _$_SignalDto(
    ssid: json['ssid'] as String,
    bssid: json['bssid'] as String,
    rss: (json['rss'] as num)?.toDouble(),
    frequency: json['frequency'] as int,
  );
}

Map<String, dynamic> _$_$_SignalDtoToJson(_$_SignalDto instance) =>
    <String, dynamic>{
      'ssid': instance.ssid,
      'bssid': instance.bssid,
      'rss': instance.rss,
      'frequency': instance.frequency,
    };

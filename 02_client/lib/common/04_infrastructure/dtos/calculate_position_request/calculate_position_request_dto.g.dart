// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_position_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatePositionRequestDto _$_$_CalculatePositionRequestDtoFromJson(
    Map json) {
  return _$_CalculatePositionRequestDto(
    projectId: json['projectId'] as String,
    receivedSignals: (json['receivedSignals'] as List)
        ?.map((e) => e == null
            ? null
            : SignalDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    settings: json['settings'] == null
        ? null
        : SettingsDto.fromJson((json['settings'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_CalculatePositionRequestDtoToJson(
        _$_CalculatePositionRequestDto instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'receivedSignals':
          instance.receivedSignals?.map((e) => e?.toJson())?.toList(),
      'settings': instance.settings?.toJson(),
    };

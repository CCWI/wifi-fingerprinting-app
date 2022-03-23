// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recalculated_fingerprint_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecalculatedFingerprintDto _$_$_RecalculatedFingerprintDtoFromJson(
    Map json) {
  return _$_RecalculatedFingerprintDto(
    id: json['id'] as String,
    fingerprintBaseId: json['fingerprintBaseId'] as String,
    projectId: json['projectId'] as String,
    timeOfCreation: json['timeOfCreation'] == null
        ? null
        : DateTime.parse(json['timeOfCreation'] as String),
    currentSettings: json['currentSettings'] == null
        ? null
        : SettingsDto.fromJson((json['currentSettings'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    locationDistances: (json['locationDistances'] as List)
        ?.map((e) => e == null
            ? null
            : LocationDistanceDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    cellsIncludingPosition: (json['cellsIncludingPosition'] as List)
        ?.map((e) => e == null
            ? null
            : CellDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    receivedNetworks: (json['receivedNetworks'] as Map)?.map(
      (k, e) => MapEntry(k as String, (e as num)?.toDouble()),
    ),
    calculatedPosition: json['calculatedPosition'] == null
        ? null
        : PositionDto.fromJson((json['calculatedPosition'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_RecalculatedFingerprintDtoToJson(
        _$_RecalculatedFingerprintDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fingerprintBaseId': instance.fingerprintBaseId,
      'projectId': instance.projectId,
      'timeOfCreation': instance.timeOfCreation?.toIso8601String(),
      'currentSettings': instance.currentSettings?.toJson(),
      'locationDistances':
          instance.locationDistances?.map((e) => e?.toJson())?.toList(),
      'cellsIncludingPosition':
          instance.cellsIncludingPosition?.map((e) => e?.toJson())?.toList(),
      'receivedNetworks': instance.receivedNetworks,
      'calculatedPosition': instance.calculatedPosition?.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calibration_fingerprint_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalibrationFingerprintDto _$_$_CalibrationFingerprintDtoFromJson(Map json) {
  return _$_CalibrationFingerprintDto(
    id: json['id'] as String,
    projectId: json['projectId'] as String,
    calibrationPointId: json['calibrationPointId'] as String,
    timeOfCreation: json['timeOfCreation'] == null
        ? null
        : DateTime.parse(json['timeOfCreation'] as String),
    receivedSignals: (json['receivedSignals'] as Map)?.map(
      (k, e) => MapEntry(k as String, (e as num)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$_$_CalibrationFingerprintDtoToJson(
        _$_CalibrationFingerprintDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'calibrationPointId': instance.calibrationPointId,
      'timeOfCreation': instance.timeOfCreation?.toIso8601String(),
      'receivedSignals': instance.receivedSignals,
    };

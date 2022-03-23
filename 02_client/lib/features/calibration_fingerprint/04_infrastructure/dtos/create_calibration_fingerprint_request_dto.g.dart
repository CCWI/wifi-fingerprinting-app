// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_calibration_fingerprint_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCalibrationFingerprintRequestDto
    _$_$_CreateCalibrationFingerprintRequestDtoFromJson(Map json) {
  return _$_CreateCalibrationFingerprintRequestDto(
    projectId: json['projectId'] as String,
    calibrationPointId: json['calibrationPointId'] as String,
    receivedSignals: (json['receivedSignals'] as List)
        ?.map((e) => e == null
            ? null
            : SignalDto.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CreateCalibrationFingerprintRequestDtoToJson(
        _$_CreateCalibrationFingerprintRequestDto instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'calibrationPointId': instance.calibrationPointId,
      'receivedSignals':
          instance.receivedSignals?.map((e) => e?.toJson())?.toList(),
    };

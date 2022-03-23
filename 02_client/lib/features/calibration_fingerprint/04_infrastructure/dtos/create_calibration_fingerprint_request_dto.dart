import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/signal/signal_dto.dart';
import '../../03_domain/entities/create_calibration_fingerprint_request.dart';

part 'create_calibration_fingerprint_request_dto.freezed.dart';
part 'create_calibration_fingerprint_request_dto.g.dart';

@freezed
abstract class CreateCalibrationFingerprintRequestDto
    with _$CreateCalibrationFingerprintRequestDto {
  const factory CreateCalibrationFingerprintRequestDto({
    @required String projectId,
    @required String calibrationPointId,
    @required List<SignalDto> receivedSignals,
  }) = _CreateCalibrationFingerprintRequestDto;

  factory CreateCalibrationFingerprintRequestDto.fromDomain(
          CreateCalibrationFingerprintRequest
              createCalibrationFingerprintRequest) =>
      CreateCalibrationFingerprintRequestDto(
        projectId: createCalibrationFingerprintRequest.projectId.getOrCrash(),
        calibrationPointId:
            createCalibrationFingerprintRequest.calibrationPointId.getOrCrash(),
        receivedSignals: createCalibrationFingerprintRequest.receivedSignals
            .map((signal) => SignalDto.fromDomain(signal))
            .asList(),
      );

  factory CreateCalibrationFingerprintRequestDto.fromJson(Map<String, dynamic> json) => _$CreateCalibrationFingerprintRequestDtoFromJson(json);
}

extension CreateCalibrationFingerprintRequestDtoX
    on CreateCalibrationFingerprintRequestDto {
  CreateCalibrationFingerprintRequest toDomain() {
    return CreateCalibrationFingerprintRequest(
      projectId: UniqueId.fromFirebaseId(projectId),
      calibrationPointId: UniqueId.fromFirebaseId(calibrationPointId),
      receivedSignals: receivedSignals.map((dto) => dto.toDomain()).kt.toList(),
    );
  }
}

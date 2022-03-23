import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/settings/settings_dto.dart';
import '../../../../common/04_infrastructure/dtos/signal/signal_dto.dart';
import '../../../03_domain/entities/calculate_position_request/calculate_position_request.dart';

part 'calculate_position_request_dto.freezed.dart';
part 'calculate_position_request_dto.g.dart';

@freezed
abstract class CalculatePositionRequestDto with _$CalculatePositionRequestDto {
  factory CalculatePositionRequestDto({
    @required String projectId,
    @required List<SignalDto> receivedSignals,
    @required SettingsDto settings,
  }) = _CalculatePositionRequestDto;

  factory CalculatePositionRequestDto.fromDomain(
          CalculatePositionRequest calculatePositionRequest) =>
      CalculatePositionRequestDto(
          projectId: calculatePositionRequest.projectId.getOrCrash(),
          receivedSignals: calculatePositionRequest.receivedSignals
              .map((s) => SignalDto.fromDomain(s))
              .asList(),
          settings: SettingsDto.fromDomain(calculatePositionRequest.settings));

  factory CalculatePositionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CalculatePositionRequestDtoFromJson(json);
}

extension CalculatePositionRequestDtoX on CalculatePositionRequestDto {
  CalculatePositionRequest toDomain() {
    return CalculatePositionRequest(
      projectId: UniqueId.fromFirebaseId(projectId),
      receivedSignals: receivedSignals.map((dto) => dto.toDomain()).kt.toList(),
      settings: settings.toDomain(),
    );
  }
}

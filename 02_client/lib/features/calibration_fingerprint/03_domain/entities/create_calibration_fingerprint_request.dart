import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';

part 'create_calibration_fingerprint_request.freezed.dart';

@freezed
abstract class CreateCalibrationFingerprintRequest
    with _$CreateCalibrationFingerprintRequest {
  const factory CreateCalibrationFingerprintRequest({
    @required UniqueId projectId,
    @required UniqueId calibrationPointId,
    @required KtList<Signal> receivedSignals,
  }) = _CreateCalibrationFingerprintRequest;

  factory CreateCalibrationFingerprintRequest.empty() =>
      CreateCalibrationFingerprintRequest(
        projectId: UniqueId(),
        calibrationPointId: UniqueId(),
        receivedSignals: KtList.empty(),
      );
}

extension CreateCalibrationFingerprintRequestX
    on CreateCalibrationFingerprintRequest {
  Option<ValueFailure<dynamic>> get failureOption {
    return projectId.failureOrUnit
        .andThen(calibrationPointId.failureOrUnit)
        .andThen(receivedSignals
            .map((signal) => signal.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}

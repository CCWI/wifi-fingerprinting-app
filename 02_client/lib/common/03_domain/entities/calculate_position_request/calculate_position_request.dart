import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/entities/settings/settings.dart';
import '../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';

part 'calculate_position_request.freezed.dart';

@freezed
abstract class CalculatePositionRequest with _$CalculatePositionRequest {
  const factory CalculatePositionRequest({
    @required UniqueId projectId,
    @required KtList<Signal> receivedSignals,
    @required Settings settings,
  }) = _CalculatePositionRequest;
}

extension CalculatePositionRequestX on CalculatePositionRequest {
  Option<ValueFailure<dynamic>> get failureOption {
    return projectId.failureOrUnit
        .andThen(receivedSignals
            .map((s) => s.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .andThen(settings.failureOption.fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}

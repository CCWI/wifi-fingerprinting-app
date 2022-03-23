import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';

part 'calibration_fingerprint.freezed.dart';

@freezed
abstract class CalibrationFingerprint
    with _$CalibrationFingerprint
    implements IEntity {
  const factory CalibrationFingerprint({
    @required UniqueId id,
    @required UniqueId projectId,
    @required UniqueId calibrationPointId,
    @required DateTime timeOfCreation,
    @required KtMap<BSSID, RSS> receivedSignals,
  }) = _CalibrationFingerprint;

  factory CalibrationFingerprint.empty() => CalibrationFingerprint(
        id: UniqueId(),
        projectId: UniqueId(),
        calibrationPointId: UniqueId(),
        timeOfCreation: DateTime.now(),
        receivedSignals: KtMutableMap.empty(),
      );
}

extension CalibrationFingerprintX on CalibrationFingerprint {
  Option<ValueFailure<dynamic>> get failureOption {
    return projectId.failureOrUnit
        .andThen(calibrationPointId.failureOrUnit)
        .andThen(receivedSignals.keys
            .map((bssid) => bssid.failureOrUnit)
            .filter((failureOrUnit) => failureOrUnit.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .andThen(receivedSignals.values
            .map((rss) => rss.failureOrUnit)
            .filter((failureOrUnit) => failureOrUnit.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .fold((f) => some(f), (_) => none());
  }
}

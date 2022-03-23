import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';

part 'calibration_point.freezed.dart';

@freezed
abstract class CalibrationPoint with _$CalibrationPoint implements IEntity {
  const factory CalibrationPoint({
    @required UniqueId id,
    @required UniqueId projectId,
    @required Name name,
    @required KtMap<BSSID, RSS> radioMap,
    @required Position position,
  }) = _CalibrationPoint;

  factory CalibrationPoint.empty() => CalibrationPoint(
        id: UniqueId(),
        projectId: UniqueId(),
        name: Name(''),
        radioMap: KtMap.empty(),
        position: Position(
          x: CoordinateValue.fromString(''),
          y: CoordinateValue.fromString(''),
          floor: FloorNumber.fromString(''),
        ),
      );
}

extension CalibrationPointX on CalibrationPoint {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(projectId.failureOrUnit)
        .andThen(radioMap.keys
            .map((bssid) => bssid.failureOrUnit)
            .filter((failureOrUnit) => failureOrUnit.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .andThen(radioMap.values
            .map((rss) => rss.failureOrUnit)
            .filter((failureOrUnit) => failureOrUnit.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .andThen(position.x.failureOrUnit)
        .andThen(position.y.failureOrUnit)
        .andThen(position.floor.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

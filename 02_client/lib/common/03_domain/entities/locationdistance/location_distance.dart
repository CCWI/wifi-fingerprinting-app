import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../failures/failures.dart';
import '../../value_objects/value_objects.dart';
import '../position/position.dart';

part 'location_distance.freezed.dart';

@freezed
abstract class LocationDistance with _$LocationDistance {
  const factory LocationDistance({
    @required UniqueId calibrationPointId,
    @required Name calibrationPointName,
    @required Position calibrationPointPosition,
    @required Distance distance,
  }) = _LocationDistance;

  factory LocationDistance.empty() => LocationDistance(
    calibrationPointId: UniqueId(),
    calibrationPointName: Name(''),
    calibrationPointPosition: Position.empty(),
    distance: Distance(0.0),
  );
}

extension LocationDistanceX on LocationDistance {
  Option<ValueFailure<dynamic>> get failureOption {
    return calibrationPointId.failureOrUnit
      .andThen(calibrationPointName.failureOrUnit)
      .andThen(distance.failureOrUnit)
      .andThen(calibrationPointPosition.x.failureOrUnit)
      .andThen(calibrationPointPosition.y.failureOrUnit)
      .andThen(calibrationPointPosition.floor.failureOrUnit)
      .fold((f) => some(f), (_) => none());
  }
}


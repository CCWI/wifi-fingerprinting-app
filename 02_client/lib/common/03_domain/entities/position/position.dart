import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../failures/failures.dart';
import '../../value_objects/value_objects.dart';

part 'position.freezed.dart';

@freezed
abstract class Position with _$Position {
  const factory Position({
    @required CoordinateValue x,
    @required CoordinateValue y,
    @required FloorNumber floor,
  }) = _Position;

  factory Position.empty() => Position(
        x: CoordinateValue.fromString(''),
        y: CoordinateValue.fromString(''),
        floor: FloorNumber.fromString(''),
      );
}

extension PositionX on Position {
  Option<ValueFailure<dynamic>> get failureOption {
    return x.failureOrUnit
        .andThen(y.failureOrUnit)
        .andThen(floor.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}



import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../failures/failures.dart';
import '../../value_objects/floor_map_value_objects.dart';
import '../../value_objects/value_objects.dart';
import '../floormap/floor_map.dart';

part 'project_details.freezed.dart';

@freezed
abstract class ProjectDetails with _$ProjectDetails {
  const factory ProjectDetails({
    @required UniqueId projectId,
    @required CoordinateValue xMaxValue,
    @required CoordinateValue yMaxValue,
    @required List25<FloorMap> floors,
  }) = _ProjectDetails;

  factory ProjectDetails.empty() => ProjectDetails(
    projectId: UniqueId(),
    xMaxValue: CoordinateValue.fromString(''),
    yMaxValue: CoordinateValue.fromString(''),
    floors: List25(emptyList()),
  );
}

extension ProjectDetailsX on ProjectDetails {
  Option<ValueFailure<dynamic>> get failureOption {
    return xMaxValue.failureOrUnit
        .andThen(yMaxValue.failureOrUnit)
        .andThen(floors
            .getOrCrash()
            .map((mapFloor) => mapFloor.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
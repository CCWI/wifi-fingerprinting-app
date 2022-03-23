import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/floormap/floor_map.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../value_objects/project_value_objects.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project implements IEntity {
  const factory Project({
    @required UniqueId id,
    @required Name name,
    @required List25<FloorMap> floors,
    @required CoordinateValue xLength,
    @required CoordinateValue yLength,
    @required RegisteredEntry registeredAccessPoints,
    @required RegisteredEntry registeredCalibrationPoints,
    @required RegisteredEntry registeredCalibrationFingerprints,
    @required RegisteredEntry registeredFingerprints,
    @required RegisteredEntry registeredCells,
  }) = _Project;

  factory Project.empty() => Project(
        id: UniqueId(),
        name: Name('', true),
        floors: List25(emptyList()),
        xLength: CoordinateValue.fromString(''),
        yLength: CoordinateValue.fromString(''),
        registeredAccessPoints: RegisteredEntry(0),
        registeredCalibrationPoints: RegisteredEntry(0),
        registeredCalibrationFingerprints: RegisteredEntry(0),
        registeredFingerprints: RegisteredEntry(0),
        registeredCells: RegisteredEntry(0),
      );
}

extension ProjectX on Project {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(xLength.failureOrUnit)
        .andThen(yLength.failureOrUnit)
        .andThen(registeredAccessPoints.failureOrUnit)
        .andThen(registeredCalibrationPoints.failureOrUnit)
        .andThen(registeredCalibrationFingerprints.failureOrUnit)
        .andThen(registeredFingerprints.failureOrUnit)
        .andThen(registeredCells.failureOrUnit)
        .andThen(floors
            .getOrCrash()
            .map((floorMap) => floorMap.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}

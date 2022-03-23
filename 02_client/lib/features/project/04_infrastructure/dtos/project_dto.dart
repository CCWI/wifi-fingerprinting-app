import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/floormap/floor_map_dto.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../03_domain/entities/project.dart';
import '../../03_domain/value_objects/project_value_objects.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
abstract class ProjectDto with _$ProjectDto implements IDto {
  factory ProjectDto({
    @required String id,
    @required String name,
    @required List<FloorMapDto> floors,
    @required double xLength,
    @required double yLength,
    @required int registeredAccessPoints,
    @required int registeredCalibrationPoints,
    @required int registeredCalibrationFingerprints,
    @required int registeredFingerprints,
    @required int registeredCells,
  }) = _ProjectDto;

  factory ProjectDto.fromDomain(Project project) {
    return ProjectDto(
      id: project.id.getOrCrash(),
      name: project.name.getOrCrash(),
      floors: project.floors
          .getOrCrash()
          .mapIndexed((index, floorMap) => FloorMapDto.fromDomain(floorMap))
          .asList(),
      xLength: project.xLength.getOrCrash(),
      yLength: project.yLength.getOrCrash(),
      registeredAccessPoints: project.registeredAccessPoints.getOrCrash(),
      registeredCalibrationPoints:
          project.registeredCalibrationPoints.getOrCrash(),
      registeredCalibrationFingerprints: project.registeredCalibrationFingerprints.getOrCrash(),
      registeredFingerprints: project.registeredFingerprints.getOrCrash(),
      registeredCells: project.registeredCells.getOrCrash(),
    );
  }

  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);

  factory ProjectDto.fromFirestore(DocumentSnapshot doc) {
    return ProjectDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension ProjectDtoX on ProjectDto {
  Project toDomain() {
    return Project(
      id: UniqueId.fromFirebaseId(id),
      name: Name(name, true),
      floors: List25(floors
          .map((floorMapDto) => floorMapDto.toDomain())
          .toImmutableList()),
      xLength: CoordinateValue(xLength),
      yLength: CoordinateValue(yLength),
      registeredAccessPoints: RegisteredEntry(registeredAccessPoints),
      registeredCalibrationPoints: RegisteredEntry(registeredCalibrationPoints),
      registeredCalibrationFingerprints: RegisteredEntry(registeredCalibrationFingerprints),
      registeredFingerprints: RegisteredEntry(registeredFingerprints),
      registeredCells: RegisteredEntry(registeredCells),
    );
  }
}

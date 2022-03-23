import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../03_domain/entities/project_details/project_details.dart';
import '../../../03_domain/value_objects/floor_map_value_objects.dart';
import '../../../03_domain/value_objects/value_objects.dart';
import '../floormap/floor_map_dto.dart';

part 'project_details_dto.freezed.dart';
part 'project_details_dto.g.dart';

@freezed
abstract class ProjectDetailsDto with _$ProjectDetailsDto {
  factory ProjectDetailsDto({
    @required String projectId,
    @required double xMaxValue,
    @required double yMaxValue,
    @required List<FloorMapDto> floors,
  }) = _ProjectDetailsDto;

  factory ProjectDetailsDto.fromDomain(ProjectDetails details) {
    return ProjectDetailsDto(
      projectId: details.projectId.getOrCrash(),
      xMaxValue: details.xMaxValue.getOrCrash(),
      yMaxValue: details.yMaxValue.getOrCrash(),
      floors: details.floors
          .getOrCrash()
          .mapIndexed((index, floorMap) => FloorMapDto.fromDomain(floorMap))
          .asList(),
    );
  }

  factory ProjectDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailsDtoFromJson(json); 
}

extension ProjectDetailsDtoX on ProjectDetailsDto {
  ProjectDetails toDomain() {
    return ProjectDetails(
      projectId: UniqueId.fromFirebaseId(projectId),
      xMaxValue: CoordinateValue(xMaxValue),
      yMaxValue: CoordinateValue(yMaxValue),
      floors: List25(floors
          .map((floorMapDto) => floorMapDto.toDomain())
          .toImmutableList()),
    );
  }
}
import 'package:flutter/rendering.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/04_infrastructure/data_scource/i_data_source.dart';
import '../../../../common/04_infrastructure/dtos/floormap/floor_map_dto.dart';
import '../../../../common/04_infrastructure/dtos/project_details/project_details_dto.dart';
import '../dtos/project_dto.dart';

abstract class IProjectDataSource extends IBaseDataSource<ProjectDto> {
  Future<String> createAndGetReference(ProjectDto project);
  Future<KtList<FloorMapDto>> readFloorsByProjectId(String id);
  Future<ProjectDetailsDto> readProjectDetails(String id);
  Future<FloorMapDto> readFloorById(String projectId, String floorId);
  Future<Offset> readCartesianDimensionsById(String id);
  Stream<KtList<ProjectDto>> watchAll();
  Stream<ProjectDto> watchById(String id);
}
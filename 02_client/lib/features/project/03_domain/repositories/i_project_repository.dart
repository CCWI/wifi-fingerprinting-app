import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/entities/floormap/floor_map.dart';
import '../../../../common/03_domain/entities/project_details/project_details.dart';
import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../entities/project.dart';
import '../failures/project_failure.dart';

abstract class IProjectRepository {
  Stream<Either<ProjectFailure, KtList<Project>>> watchAll();
  Stream<Either<ProjectFailure, Project>> watchById(UniqueId id);
  Future<Either<ProjectFailure, Project>> readById(UniqueId id);
  Future<Either<ProjectFailure, List25<FloorMap>>> readFloorsByProjectId(UniqueId id);
  Future<Either<ProjectFailure, ProjectDetails>> readProjectDetails(UniqueId id);
  Future<Either<ProjectFailure, FloorMap>> readFloorById(UniqueId projectId,UniqueId floorId);
  Future<Either<ProjectFailure, Offset>> readCartesianDimensionsById(UniqueId id);
  Future<Either<ProjectFailure, UniqueId>> createAndGetReference(Project project);
  Future<Either<ProjectFailure, Unit>> create(Project project);
  Future<Either<ProjectFailure, Unit>> update(Project project);
  Future<Either<ProjectFailure, Unit>> delete(UniqueId id);
}

import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/03_domain/entities/floormap/floor_map.dart';
import '../../../../common/03_domain/entities/project_details/project_details.dart';
import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../common/04_infrastructure/dtos/floormap/floor_map_dto.dart';
import '../../../../common/04_infrastructure/dtos/project_details/project_details_dto.dart';
import '../../03_domain/entities/project.dart';
import '../../03_domain/failures/project_failure.dart';
import '../../03_domain/repositories/i_project_repository.dart';
import '../data_source/i_project_data_source.dart';
import '../dtos/project_dto.dart';

@LazySingleton(as: IProjectRepository)
class ProjectRepositoryImpl implements IProjectRepository {
  final IProjectDataSource _dataSource;

  ProjectRepositoryImpl(IProjectDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  @override
  Stream<Either<ProjectFailure, KtList<Project>>> watchAll() async* {
    yield* _dataSource
        .watchAll()
        .map(
          (snapshot) => right<ProjectFailure, KtList<Project>>(
            snapshot.map((dto) => dto.toDomain()),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<ProjectFailure, Project>> watchById(UniqueId id) async* {
    try {
      yield* _dataSource.watchById(id.getOrCrash()).map(
            (dtoSnapshot) => right<ProjectFailure, Project>(
              dtoSnapshot.toDomain(),
            ),
          );
    } catch (e) {
      if (e is DataSourceException) {
        //TODO: handle exception properly
        yield left(const ProjectFailure.unexpected());
      } else {
        yield left(const ProjectFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> create(Project project) async {
    final projectDto = ProjectDto.fromDomain(project);

    return await _dataSource
        .create(projectDto)
        .then((_) => right<ProjectFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, UniqueId>> createAndGetReference(
      Project project) async {
    final projectDto = ProjectDto.fromDomain(project);

    return await _dataSource
        .createAndGetReference(projectDto)
        .then((ref) =>
            right<ProjectFailure, UniqueId>(UniqueId.fromFirebaseId(ref)))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, Project>> readById(UniqueId id) async {
    return await _dataSource
        .read(id.getOrCrash())
        .then(
          (projectDto) => right<ProjectFailure, Project>(
            projectDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, ProjectDetails>> readProjectDetails(
      UniqueId id) async {
    return await _dataSource
        .readProjectDetails(id.getOrCrash())
        .then(
          (projectDetailsDto) => right<ProjectFailure, ProjectDetails>(
            projectDetailsDto.toDomain(),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, List25<FloorMap>>> readFloorsByProjectId(
      UniqueId projectId) async {
    return await _dataSource
        .readFloorsByProjectId(projectId.getOrCrash())
        .then(
          (floorDtos) => right<ProjectFailure, List25<FloorMap>>(
            List25(floorDtos.map((floorDto) => floorDto.toDomain())),
          ),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, FloorMap>> readFloorById(
      UniqueId projectId, UniqueId floorId) async {
    return await _dataSource
        .readFloorById(projectId.getOrCrash(), floorId.getOrCrash())
        .then(
            (floorDto) => right<ProjectFailure, FloorMap>(floorDto.toDomain()))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, Offset>> readCartesianDimensionsById(
      UniqueId id) async {
    return await _dataSource
        .readCartesianDimensionsById(id.getOrCrash())
        .then(
          (dimensions) => right<ProjectFailure, Offset>(dimensions),
        )
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, Unit>> update(Project project) async {
    final projectDto = ProjectDto.fromDomain(project);

    return await _dataSource
        .update(projectDto)
        .then((_) => right<ProjectFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ProjectFailure, Unit>> delete(UniqueId id) async {
    return await _dataSource
        .delete(id.getOrCrash())
        .then((_) => right<ProjectFailure, Unit>(unit))
        .catchError(
      (e) {
        if (e is DataSourceException) {
          //TODO: handle exception properly
          return left(const ProjectFailure.unexpected());
        } else {
          return left(const ProjectFailure.unexpected());
        }
      },
    );
  }
}

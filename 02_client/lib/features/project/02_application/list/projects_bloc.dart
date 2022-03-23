import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../03_domain/entities/project.dart';
import '../../03_domain/failures/project_failure.dart';
import '../../03_domain/repositories/i_project_repository.dart';

part 'projects_bloc.freezed.dart';
part 'projects_event.dart';
part 'projects_state.dart';

@injectable
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final IProjectRepository _pRepository;
  StreamSubscription<Either<ProjectFailure, KtList<Project>>> _pSubscription;

  ProjectsBloc({@required IProjectRepository pRepository})
      : assert(pRepository != null),
        _pRepository = pRepository,
        super(ProjectsState.initial());

  @override
  Stream<ProjectsState> mapEventToState(
    ProjectsEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ProjectsState.loadInProgress();
        await _pSubscription?.cancel();
        _pSubscription = _pRepository.watchAll().listen(
            (projects) => add(ProjectsEvent.projectsReceived(projects)));
      },
      projectsReceived: (e) async* {
        yield e.failureOrProjects.fold(
          (f) => ProjectsState.loadFailure(f),
          (projects) => ProjectsState.loadSuccess(projects),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _pSubscription?.cancel();
    return super.close();
  }
}

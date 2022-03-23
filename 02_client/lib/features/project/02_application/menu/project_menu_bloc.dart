import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/project.dart';
import '../../03_domain/failures/project_failure.dart';
import '../../03_domain/repositories/i_project_repository.dart';

part 'project_menu_bloc.freezed.dart';
part 'project_menu_event.dart';
part 'project_menu_state.dart';

@injectable
class ProjectMenuBloc extends Bloc<ProjectMenuEvent, ProjectMenuState> {
  final IProjectRepository _pRepository;
  StreamSubscription<Either<ProjectFailure, Project>> _pSubscription;

  ProjectMenuBloc({@required IProjectRepository projectRepository})
      : assert(projectRepository != null),
        _pRepository = projectRepository, super(ProjectMenuState.initial());

  @override
  Stream<ProjectMenuState> mapEventToState(
    ProjectMenuEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const ProjectMenuState.loadInProgress();
        await _pSubscription?.cancel();
        _pSubscription =
            _pRepository.watchById(e.projectId).listen(
                  (project) => add(ProjectMenuEvent.projectReceived(project)),
                );
      },
      projectReceived: (e) async* {
        yield e.failureOrProject.fold(
          (f) => ProjectMenuState.loadFailure(f),
          (project) => ProjectMenuState.loadScuccess(project),
        );
      },
    );
  }
}

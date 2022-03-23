part of 'projects_bloc.dart';

@freezed
abstract class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.watchAllStarted() = _WatchAllStarted;
  const factory ProjectsEvent.projectsReceived(
          Either<ProjectFailure, KtList<Project>> failureOrProjects) =
      _ProjectsReceived;
}

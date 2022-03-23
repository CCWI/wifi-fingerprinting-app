part of 'project_menu_bloc.dart';

@freezed
abstract class ProjectMenuEvent with _$ProjectMenuEvent {
  const factory ProjectMenuEvent.initialized(UniqueId projectId) = _Initialized;
  const factory ProjectMenuEvent.projectReceived(Either<ProjectFailure, Project> failureOrProject) = _ProjectReceived;
}

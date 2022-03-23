part of 'project_menu_bloc.dart';

@freezed
abstract class ProjectMenuState with _$ProjectMenuState {
  const factory ProjectMenuState.initial() = Initial;
  const factory ProjectMenuState.loadInProgress() = LoadInProgress;
  const factory ProjectMenuState.loadScuccess(Project project) = LoadSuccess;
  const factory ProjectMenuState.loadFailure(ProjectFailure projectFailure) = LoadFailure;
}


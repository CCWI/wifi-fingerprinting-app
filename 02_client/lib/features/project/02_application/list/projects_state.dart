part of 'projects_bloc.dart';

@freezed
abstract class ProjectsState with _$ProjectsState {
  const factory ProjectsState.initial() = Initial;
  const factory ProjectsState.loadInProgress() = DataTransferInProgress;
  const factory ProjectsState.loadSuccess(KtList<Project> projects) = LoadSuccess;
  const factory ProjectsState.loadFailure(ProjectFailure projectFailure) = LoadFailure;
}
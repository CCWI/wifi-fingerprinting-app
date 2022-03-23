part of 'project_form_bloc.dart';

@freezed
abstract class ProjectFormState with _$ProjectFormState {
  const factory ProjectFormState({
    @required Project project,
    @required bool showErrorMessages,
    @required bool isInitial,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isDeleting,
    @required Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption,
    @required Option<Either<ProjectFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _ProjectFormState;

  factory ProjectFormState.initial() => ProjectFormState(
        project: Project.empty(),
        showErrorMessages: false,
        isInitial: true,
        isEditing: false,
        isSaving: false,
        isDeleting: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
      );
}

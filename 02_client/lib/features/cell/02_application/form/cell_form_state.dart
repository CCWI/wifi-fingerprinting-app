part of 'cell_form_bloc.dart';

@freezed
abstract class CellFormState with _$CellFormState {
  const factory CellFormState({
    @required Cell cell,
    @required bool showErrorMessages,
    @required bool isInitial,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isDeleting,
    @required Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption,
    @required Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _CellFormState;

  factory CellFormState.initial() => CellFormState(
        cell: Cell.empty(),
        showErrorMessages: false,
        isInitial: true,
        isEditing: false,
        isSaving: false,
        isDeleting: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
      );
}

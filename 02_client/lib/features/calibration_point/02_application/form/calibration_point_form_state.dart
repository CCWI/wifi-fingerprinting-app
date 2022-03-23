part of 'calibration_point_form_bloc.dart';

@freezed
abstract class CalibrationPointFormState with _$CalibrationPointFormState {
  const factory CalibrationPointFormState({
    CalibrationPoint calibrationPoint,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isDeleting,
    @required bool isSaving,
    @required
        Option<Either<CalibrationPointFailure, Unit>> saveFailureOrSuccessOption,
        Option<Either<CalibrationPointFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _CalibrationPointFormState;

  factory CalibrationPointFormState.initial() => CalibrationPointFormState(
        calibrationPoint: CalibrationPoint.empty(),
        showErrorMessages: false,
        isEditing: false,
        isDeleting: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
      );
}

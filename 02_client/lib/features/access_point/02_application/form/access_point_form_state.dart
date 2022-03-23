part of 'access_point_form_bloc.dart';

@freezed
abstract class AccessPointFormState with _$AccessPointFormState {
  const factory AccessPointFormState({
    AccessPoint accessPoint,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isDeleting,
    @required bool isSaving,
    @required
        Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption,
        Option<Either<AccessPointFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _AccessPointFormState;

  factory AccessPointFormState.initial() => AccessPointFormState(
        accessPoint: AccessPoint.empty(),
        showErrorMessages: false,
        isEditing: false,
        isDeleting: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
      );
}

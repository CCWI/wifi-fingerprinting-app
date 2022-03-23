part of 'fingerprint_form_bloc.dart';

@freezed
abstract class FingerprintFormState with _$FingerprintFormState {
  const factory FingerprintFormState.initial() = Initial;
  const factory FingerprintFormState.loadInProgress() = LoadInProgress;
  const factory FingerprintFormState.calculatedPosition(Position position, KtList<Cell> cellsIncludingPosition) = CalculatedPosition;
  const factory FingerprintFormState.calculationFailure(FingerprintFailure failure) = CalculationFailure;
  const factory FingerprintFormState.savingSuccess() = SavingSuccess;
}


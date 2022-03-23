// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fingerprint_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FingerprintFormEventTearOff {
  const _$FingerprintFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(UniqueId projectId) {
    return _Initialized(
      projectId,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $FingerprintFormEvent = _$FingerprintFormEventTearOff();

/// @nodoc
mixin _$FingerprintFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FingerprintFormEventCopyWith<$Res> {
  factory $FingerprintFormEventCopyWith(FingerprintFormEvent value,
          $Res Function(FingerprintFormEvent) then) =
      _$FingerprintFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FingerprintFormEventCopyWithImpl<$Res>
    implements $FingerprintFormEventCopyWith<$Res> {
  _$FingerprintFormEventCopyWithImpl(this._value, this._then);

  final FingerprintFormEvent _value;
  // ignore: unused_field
  final $Res Function(FingerprintFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$FingerprintFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.projectId) : assert(projectId != null);

  @override
  final UniqueId projectId;

  @override
  String toString() {
    return 'FingerprintFormEvent.initialized(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return initialized(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FingerprintFormEvent {
  const factory _Initialized(UniqueId projectId) = _$_Initialized;

  UniqueId get projectId;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$FingerprintFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'FingerprintFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements FingerprintFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$FingerprintFormStateTearOff {
  const _$FingerprintFormStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

// ignore: unused_element
  CalculatedPosition calculatedPosition(
      Position position, KtList<Cell> cellsIncludingPosition) {
    return CalculatedPosition(
      position,
      cellsIncludingPosition,
    );
  }

// ignore: unused_element
  CalculationFailure calculationFailure(FingerprintFailure failure) {
    return CalculationFailure(
      failure,
    );
  }

// ignore: unused_element
  SavingSuccess savingSuccess() {
    return const SavingSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $FingerprintFormState = _$FingerprintFormStateTearOff();

/// @nodoc
mixin _$FingerprintFormState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FingerprintFormStateCopyWith<$Res> {
  factory $FingerprintFormStateCopyWith(FingerprintFormState value,
          $Res Function(FingerprintFormState) then) =
      _$FingerprintFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FingerprintFormStateCopyWithImpl<$Res>
    implements $FingerprintFormStateCopyWith<$Res> {
  _$FingerprintFormStateCopyWithImpl(this._value, this._then);

  final FingerprintFormState _value;
  // ignore: unused_field
  final $Res Function(FingerprintFormState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$FingerprintFormStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FingerprintFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FingerprintFormState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$FingerprintFormStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc
class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'FingerprintFormState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements FingerprintFormState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $CalculatedPositionCopyWith<$Res> {
  factory $CalculatedPositionCopyWith(
          CalculatedPosition value, $Res Function(CalculatedPosition) then) =
      _$CalculatedPositionCopyWithImpl<$Res>;
  $Res call({Position position, KtList<Cell> cellsIncludingPosition});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$CalculatedPositionCopyWithImpl<$Res>
    extends _$FingerprintFormStateCopyWithImpl<$Res>
    implements $CalculatedPositionCopyWith<$Res> {
  _$CalculatedPositionCopyWithImpl(
      CalculatedPosition _value, $Res Function(CalculatedPosition) _then)
      : super(_value, (v) => _then(v as CalculatedPosition));

  @override
  CalculatedPosition get _value => super._value as CalculatedPosition;

  @override
  $Res call({
    Object position = freezed,
    Object cellsIncludingPosition = freezed,
  }) {
    return _then(CalculatedPosition(
      position == freezed ? _value.position : position as Position,
      cellsIncludingPosition == freezed
          ? _value.cellsIncludingPosition
          : cellsIncludingPosition as KtList<Cell>,
    ));
  }

  @override
  $PositionCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
class _$CalculatedPosition implements CalculatedPosition {
  const _$CalculatedPosition(this.position, this.cellsIncludingPosition)
      : assert(position != null),
        assert(cellsIncludingPosition != null);

  @override
  final Position position;
  @override
  final KtList<Cell> cellsIncludingPosition;

  @override
  String toString() {
    return 'FingerprintFormState.calculatedPosition(position: $position, cellsIncludingPosition: $cellsIncludingPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CalculatedPosition &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.cellsIncludingPosition, cellsIncludingPosition) ||
                const DeepCollectionEquality().equals(
                    other.cellsIncludingPosition, cellsIncludingPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(cellsIncludingPosition);

  @override
  $CalculatedPositionCopyWith<CalculatedPosition> get copyWith =>
      _$CalculatedPositionCopyWithImpl<CalculatedPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return calculatedPosition(position, cellsIncludingPosition);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculatedPosition != null) {
      return calculatedPosition(position, cellsIncludingPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return calculatedPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculatedPosition != null) {
      return calculatedPosition(this);
    }
    return orElse();
  }
}

abstract class CalculatedPosition implements FingerprintFormState {
  const factory CalculatedPosition(
          Position position, KtList<Cell> cellsIncludingPosition) =
      _$CalculatedPosition;

  Position get position;
  KtList<Cell> get cellsIncludingPosition;
  $CalculatedPositionCopyWith<CalculatedPosition> get copyWith;
}

/// @nodoc
abstract class $CalculationFailureCopyWith<$Res> {
  factory $CalculationFailureCopyWith(
          CalculationFailure value, $Res Function(CalculationFailure) then) =
      _$CalculationFailureCopyWithImpl<$Res>;
  $Res call({FingerprintFailure failure});

  $FingerprintFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CalculationFailureCopyWithImpl<$Res>
    extends _$FingerprintFormStateCopyWithImpl<$Res>
    implements $CalculationFailureCopyWith<$Res> {
  _$CalculationFailureCopyWithImpl(
      CalculationFailure _value, $Res Function(CalculationFailure) _then)
      : super(_value, (v) => _then(v as CalculationFailure));

  @override
  CalculationFailure get _value => super._value as CalculationFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(CalculationFailure(
      failure == freezed ? _value.failure : failure as FingerprintFailure,
    ));
  }

  @override
  $FingerprintFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FingerprintFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$CalculationFailure implements CalculationFailure {
  const _$CalculationFailure(this.failure) : assert(failure != null);

  @override
  final FingerprintFailure failure;

  @override
  String toString() {
    return 'FingerprintFormState.calculationFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CalculationFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $CalculationFailureCopyWith<CalculationFailure> get copyWith =>
      _$CalculationFailureCopyWithImpl<CalculationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return calculationFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationFailure != null) {
      return calculationFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return calculationFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationFailure != null) {
      return calculationFailure(this);
    }
    return orElse();
  }
}

abstract class CalculationFailure implements FingerprintFormState {
  const factory CalculationFailure(FingerprintFailure failure) =
      _$CalculationFailure;

  FingerprintFailure get failure;
  $CalculationFailureCopyWith<CalculationFailure> get copyWith;
}

/// @nodoc
abstract class $SavingSuccessCopyWith<$Res> {
  factory $SavingSuccessCopyWith(
          SavingSuccess value, $Res Function(SavingSuccess) then) =
      _$SavingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingSuccessCopyWithImpl<$Res>
    extends _$FingerprintFormStateCopyWithImpl<$Res>
    implements $SavingSuccessCopyWith<$Res> {
  _$SavingSuccessCopyWithImpl(
      SavingSuccess _value, $Res Function(SavingSuccess) _then)
      : super(_value, (v) => _then(v as SavingSuccess));

  @override
  SavingSuccess get _value => super._value as SavingSuccess;
}

/// @nodoc
class _$SavingSuccess implements SavingSuccess {
  const _$SavingSuccess();

  @override
  String toString() {
    return 'FingerprintFormState.savingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SavingSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result calculatedPosition(
            Position position, KtList<Cell> cellsIncludingPosition),
    @required Result calculationFailure(FingerprintFailure failure),
    @required Result savingSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return savingSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result calculatedPosition(
        Position position, KtList<Cell> cellsIncludingPosition),
    Result calculationFailure(FingerprintFailure failure),
    Result savingSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savingSuccess != null) {
      return savingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result calculatedPosition(CalculatedPosition value),
    @required Result calculationFailure(CalculationFailure value),
    @required Result savingSuccess(SavingSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(calculatedPosition != null);
    assert(calculationFailure != null);
    assert(savingSuccess != null);
    return savingSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result calculatedPosition(CalculatedPosition value),
    Result calculationFailure(CalculationFailure value),
    Result savingSuccess(SavingSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savingSuccess != null) {
      return savingSuccess(this);
    }
    return orElse();
  }
}

abstract class SavingSuccess implements FingerprintFormState {
  const factory SavingSuccess() = _$SavingSuccess;
}

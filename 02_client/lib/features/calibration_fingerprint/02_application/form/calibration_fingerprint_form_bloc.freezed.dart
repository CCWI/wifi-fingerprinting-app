// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_fingerprint_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationFingerprintFormEventTearOff {
  const _$CalibrationFingerprintFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(UniqueId calibrationPointId, UniqueId projectId) {
    return _Initialized(
      calibrationPointId,
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
const $CalibrationFingerprintFormEvent =
    _$CalibrationFingerprintFormEventTearOff();

/// @nodoc
mixin _$CalibrationFingerprintFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(UniqueId calibrationPointId, UniqueId projectId),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId calibrationPointId, UniqueId projectId),
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
abstract class $CalibrationFingerprintFormEventCopyWith<$Res> {
  factory $CalibrationFingerprintFormEventCopyWith(
          CalibrationFingerprintFormEvent value,
          $Res Function(CalibrationFingerprintFormEvent) then) =
      _$CalibrationFingerprintFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationFingerprintFormEventCopyWithImpl<$Res>
    implements $CalibrationFingerprintFormEventCopyWith<$Res> {
  _$CalibrationFingerprintFormEventCopyWithImpl(this._value, this._then);

  final CalibrationFingerprintFormEvent _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprintFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UniqueId calibrationPointId, UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object calibrationPointId = freezed,
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.calibrationPointId, this.projectId)
      : assert(calibrationPointId != null),
        assert(projectId != null);

  @override
  final UniqueId calibrationPointId;
  @override
  final UniqueId projectId;

  @override
  String toString() {
    return 'CalibrationFingerprintFormEvent.initialized(calibrationPointId: $calibrationPointId, projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.calibrationPointId, calibrationPointId) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPointId, calibrationPointId)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPointId) ^
      const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(UniqueId calibrationPointId, UniqueId projectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return initialized(calibrationPointId, projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId calibrationPointId, UniqueId projectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(calibrationPointId, projectId);
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

abstract class _Initialized implements CalibrationFingerprintFormEvent {
  const factory _Initialized(UniqueId calibrationPointId, UniqueId projectId) =
      _$_Initialized;

  UniqueId get calibrationPointId;
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
    extends _$CalibrationFingerprintFormEventCopyWithImpl<$Res>
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
    return 'CalibrationFingerprintFormEvent.saved()';
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
    @required
        Result initialized(UniqueId calibrationPointId, UniqueId projectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId calibrationPointId, UniqueId projectId),
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

abstract class _Saved implements CalibrationFingerprintFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$CalibrationFingerprintFormStateTearOff {
  const _$CalibrationFingerprintFormStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  SignalLoadInProgress signalLoadInProgress() {
    return const SignalLoadInProgress();
  }

// ignore: unused_element
  SignalLoadSuccess signalLoadSuccess(KtList<Signal> signals) {
    return SignalLoadSuccess(
      signals,
    );
  }

// ignore: unused_element
  LoadFailure signalLoadFailure(SignalFailure failure) {
    return LoadFailure(
      failure,
    );
  }

// ignore: unused_element
  SaveCalibrationFingerprintSuccess saveCalibrationFingerprintSuccess() {
    return const SaveCalibrationFingerprintSuccess();
  }

// ignore: unused_element
  SaveCalibrationFingerprintFailure saveCalibrationFingerprintFailure(
      CalibrationFingerprintFailure failure) {
    return SaveCalibrationFingerprintFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationFingerprintFormState =
    _$CalibrationFingerprintFormStateTearOff();

/// @nodoc
mixin _$CalibrationFingerprintFormState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalibrationFingerprintFormStateCopyWith<$Res> {
  factory $CalibrationFingerprintFormStateCopyWith(
          CalibrationFingerprintFormState value,
          $Res Function(CalibrationFingerprintFormState) then) =
      _$CalibrationFingerprintFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $CalibrationFingerprintFormStateCopyWith<$Res> {
  _$CalibrationFingerprintFormStateCopyWithImpl(this._value, this._then);

  final CalibrationFingerprintFormState _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprintFormState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
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
    return 'CalibrationFingerprintFormState.initial()';
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
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
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
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CalibrationFingerprintFormState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SignalLoadInProgressCopyWith<$Res> {
  factory $SignalLoadInProgressCopyWith(SignalLoadInProgress value,
          $Res Function(SignalLoadInProgress) then) =
      _$SignalLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignalLoadInProgressCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $SignalLoadInProgressCopyWith<$Res> {
  _$SignalLoadInProgressCopyWithImpl(
      SignalLoadInProgress _value, $Res Function(SignalLoadInProgress) _then)
      : super(_value, (v) => _then(v as SignalLoadInProgress));

  @override
  SignalLoadInProgress get _value => super._value as SignalLoadInProgress;
}

/// @nodoc
class _$SignalLoadInProgress implements SignalLoadInProgress {
  const _$SignalLoadInProgress();

  @override
  String toString() {
    return 'CalibrationFingerprintFormState.signalLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignalLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadInProgress != null) {
      return signalLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadInProgress != null) {
      return signalLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class SignalLoadInProgress implements CalibrationFingerprintFormState {
  const factory SignalLoadInProgress() = _$SignalLoadInProgress;
}

/// @nodoc
abstract class $SignalLoadSuccessCopyWith<$Res> {
  factory $SignalLoadSuccessCopyWith(
          SignalLoadSuccess value, $Res Function(SignalLoadSuccess) then) =
      _$SignalLoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Signal> signals});
}

/// @nodoc
class _$SignalLoadSuccessCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $SignalLoadSuccessCopyWith<$Res> {
  _$SignalLoadSuccessCopyWithImpl(
      SignalLoadSuccess _value, $Res Function(SignalLoadSuccess) _then)
      : super(_value, (v) => _then(v as SignalLoadSuccess));

  @override
  SignalLoadSuccess get _value => super._value as SignalLoadSuccess;

  @override
  $Res call({
    Object signals = freezed,
  }) {
    return _then(SignalLoadSuccess(
      signals == freezed ? _value.signals : signals as KtList<Signal>,
    ));
  }
}

/// @nodoc
class _$SignalLoadSuccess implements SignalLoadSuccess {
  const _$SignalLoadSuccess(this.signals) : assert(signals != null);

  @override
  final KtList<Signal> signals;

  @override
  String toString() {
    return 'CalibrationFingerprintFormState.signalLoadSuccess(signals: $signals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignalLoadSuccess &&
            (identical(other.signals, signals) ||
                const DeepCollectionEquality().equals(other.signals, signals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signals);

  @override
  $SignalLoadSuccessCopyWith<SignalLoadSuccess> get copyWith =>
      _$SignalLoadSuccessCopyWithImpl<SignalLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadSuccess(signals);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadSuccess != null) {
      return signalLoadSuccess(signals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadSuccess != null) {
      return signalLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class SignalLoadSuccess implements CalibrationFingerprintFormState {
  const factory SignalLoadSuccess(KtList<Signal> signals) = _$SignalLoadSuccess;

  KtList<Signal> get signals;
  $SignalLoadSuccessCopyWith<SignalLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({SignalFailure failure});

  $SignalFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoadFailure(
      failure == freezed ? _value.failure : failure as SignalFailure,
    ));
  }

  @override
  $SignalFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SignalFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final SignalFailure failure;

  @override
  String toString() {
    return 'CalibrationFingerprintFormState.signalLoadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadFailure != null) {
      return signalLoadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return signalLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signalLoadFailure != null) {
      return signalLoadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements CalibrationFingerprintFormState {
  const factory LoadFailure(SignalFailure failure) = _$LoadFailure;

  SignalFailure get failure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

/// @nodoc
abstract class $SaveCalibrationFingerprintSuccessCopyWith<$Res> {
  factory $SaveCalibrationFingerprintSuccessCopyWith(
          SaveCalibrationFingerprintSuccess value,
          $Res Function(SaveCalibrationFingerprintSuccess) then) =
      _$SaveCalibrationFingerprintSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCalibrationFingerprintSuccessCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $SaveCalibrationFingerprintSuccessCopyWith<$Res> {
  _$SaveCalibrationFingerprintSuccessCopyWithImpl(
      SaveCalibrationFingerprintSuccess _value,
      $Res Function(SaveCalibrationFingerprintSuccess) _then)
      : super(_value, (v) => _then(v as SaveCalibrationFingerprintSuccess));

  @override
  SaveCalibrationFingerprintSuccess get _value =>
      super._value as SaveCalibrationFingerprintSuccess;
}

/// @nodoc
class _$SaveCalibrationFingerprintSuccess
    implements SaveCalibrationFingerprintSuccess {
  const _$SaveCalibrationFingerprintSuccess();

  @override
  String toString() {
    return 'CalibrationFingerprintFormState.saveCalibrationFingerprintSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCalibrationFingerprintSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return saveCalibrationFingerprintSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCalibrationFingerprintSuccess != null) {
      return saveCalibrationFingerprintSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return saveCalibrationFingerprintSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCalibrationFingerprintSuccess != null) {
      return saveCalibrationFingerprintSuccess(this);
    }
    return orElse();
  }
}

abstract class SaveCalibrationFingerprintSuccess
    implements CalibrationFingerprintFormState {
  const factory SaveCalibrationFingerprintSuccess() =
      _$SaveCalibrationFingerprintSuccess;
}

/// @nodoc
abstract class $SaveCalibrationFingerprintFailureCopyWith<$Res> {
  factory $SaveCalibrationFingerprintFailureCopyWith(
          SaveCalibrationFingerprintFailure value,
          $Res Function(SaveCalibrationFingerprintFailure) then) =
      _$SaveCalibrationFingerprintFailureCopyWithImpl<$Res>;
  $Res call({CalibrationFingerprintFailure failure});

  $CalibrationFingerprintFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SaveCalibrationFingerprintFailureCopyWithImpl<$Res>
    extends _$CalibrationFingerprintFormStateCopyWithImpl<$Res>
    implements $SaveCalibrationFingerprintFailureCopyWith<$Res> {
  _$SaveCalibrationFingerprintFailureCopyWithImpl(
      SaveCalibrationFingerprintFailure _value,
      $Res Function(SaveCalibrationFingerprintFailure) _then)
      : super(_value, (v) => _then(v as SaveCalibrationFingerprintFailure));

  @override
  SaveCalibrationFingerprintFailure get _value =>
      super._value as SaveCalibrationFingerprintFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SaveCalibrationFingerprintFailure(
      failure == freezed
          ? _value.failure
          : failure as CalibrationFingerprintFailure,
    ));
  }

  @override
  $CalibrationFingerprintFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CalibrationFingerprintFailureCopyWith<$Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$SaveCalibrationFingerprintFailure
    implements SaveCalibrationFingerprintFailure {
  const _$SaveCalibrationFingerprintFailure(this.failure)
      : assert(failure != null);

  @override
  final CalibrationFingerprintFailure failure;

  @override
  String toString() {
    return 'CalibrationFingerprintFormState.saveCalibrationFingerprintFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCalibrationFingerprintFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SaveCalibrationFingerprintFailureCopyWith<SaveCalibrationFingerprintFailure>
      get copyWith => _$SaveCalibrationFingerprintFailureCopyWithImpl<
          SaveCalibrationFingerprintFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signalLoadInProgress(),
    @required Result signalLoadSuccess(KtList<Signal> signals),
    @required Result signalLoadFailure(SignalFailure failure),
    @required Result saveCalibrationFingerprintSuccess(),
    @required
        Result saveCalibrationFingerprintFailure(
            CalibrationFingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return saveCalibrationFingerprintFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signalLoadInProgress(),
    Result signalLoadSuccess(KtList<Signal> signals),
    Result signalLoadFailure(SignalFailure failure),
    Result saveCalibrationFingerprintSuccess(),
    Result saveCalibrationFingerprintFailure(
        CalibrationFingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCalibrationFingerprintFailure != null) {
      return saveCalibrationFingerprintFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signalLoadInProgress(SignalLoadInProgress value),
    @required Result signalLoadSuccess(SignalLoadSuccess value),
    @required Result signalLoadFailure(LoadFailure value),
    @required
        Result saveCalibrationFingerprintSuccess(
            SaveCalibrationFingerprintSuccess value),
    @required
        Result saveCalibrationFingerprintFailure(
            SaveCalibrationFingerprintFailure value),
  }) {
    assert(initial != null);
    assert(signalLoadInProgress != null);
    assert(signalLoadSuccess != null);
    assert(signalLoadFailure != null);
    assert(saveCalibrationFingerprintSuccess != null);
    assert(saveCalibrationFingerprintFailure != null);
    return saveCalibrationFingerprintFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signalLoadInProgress(SignalLoadInProgress value),
    Result signalLoadSuccess(SignalLoadSuccess value),
    Result signalLoadFailure(LoadFailure value),
    Result saveCalibrationFingerprintSuccess(
        SaveCalibrationFingerprintSuccess value),
    Result saveCalibrationFingerprintFailure(
        SaveCalibrationFingerprintFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCalibrationFingerprintFailure != null) {
      return saveCalibrationFingerprintFailure(this);
    }
    return orElse();
  }
}

abstract class SaveCalibrationFingerprintFailure
    implements CalibrationFingerprintFormState {
  const factory SaveCalibrationFingerprintFailure(
          CalibrationFingerprintFailure failure) =
      _$SaveCalibrationFingerprintFailure;

  CalibrationFingerprintFailure get failure;
  $SaveCalibrationFingerprintFailureCopyWith<SaveCalibrationFingerprintFailure>
      get copyWith;
}

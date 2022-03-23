// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scanned_networks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ScannedNetworksEventTearOff {
  const _$ScannedNetworksEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<String> projectId) {
    return _Initialized(
      projectId,
    );
  }

// ignore: unused_element
  _Refreshed refreshed(Option<String> projectId) {
    return _Refreshed(
      projectId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ScannedNetworksEvent = _$ScannedNetworksEventTearOff();

/// @nodoc
mixin _$ScannedNetworksEvent {
  Option<String> get projectId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<String> projectId),
    @required Result refreshed(Option<String> projectId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<String> projectId),
    Result refreshed(Option<String> projectId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result refreshed(_Refreshed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result refreshed(_Refreshed value),
    @required Result orElse(),
  });

  $ScannedNetworksEventCopyWith<ScannedNetworksEvent> get copyWith;
}

/// @nodoc
abstract class $ScannedNetworksEventCopyWith<$Res> {
  factory $ScannedNetworksEventCopyWith(ScannedNetworksEvent value,
          $Res Function(ScannedNetworksEvent) then) =
      _$ScannedNetworksEventCopyWithImpl<$Res>;
  $Res call({Option<String> projectId});
}

/// @nodoc
class _$ScannedNetworksEventCopyWithImpl<$Res>
    implements $ScannedNetworksEventCopyWith<$Res> {
  _$ScannedNetworksEventCopyWithImpl(this._value, this._then);

  final ScannedNetworksEvent _value;
  // ignore: unused_field
  final $Res Function(ScannedNetworksEvent) _then;

  @override
  $Res call({
    Object projectId = freezed,
  }) {
    return _then(_value.copyWith(
      projectId:
          projectId == freezed ? _value.projectId : projectId as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $ScannedNetworksEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Option<String> projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ScannedNetworksEventCopyWithImpl<$Res>
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
      projectId == freezed ? _value.projectId : projectId as Option<String>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.projectId) : assert(projectId != null);

  @override
  final Option<String> projectId;

  @override
  String toString() {
    return 'ScannedNetworksEvent.initialized(projectId: $projectId)';
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
    @required Result initialized(Option<String> projectId),
    @required Result refreshed(Option<String> projectId),
  }) {
    assert(initialized != null);
    assert(refreshed != null);
    return initialized(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<String> projectId),
    Result refreshed(Option<String> projectId),
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
    @required Result refreshed(_Refreshed value),
  }) {
    assert(initialized != null);
    assert(refreshed != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result refreshed(_Refreshed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ScannedNetworksEvent {
  const factory _Initialized(Option<String> projectId) = _$_Initialized;

  @override
  Option<String> get projectId;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$RefreshedCopyWith<$Res>
    implements $ScannedNetworksEventCopyWith<$Res> {
  factory _$RefreshedCopyWith(
          _Refreshed value, $Res Function(_Refreshed) then) =
      __$RefreshedCopyWithImpl<$Res>;
  @override
  $Res call({Option<String> projectId});
}

/// @nodoc
class __$RefreshedCopyWithImpl<$Res>
    extends _$ScannedNetworksEventCopyWithImpl<$Res>
    implements _$RefreshedCopyWith<$Res> {
  __$RefreshedCopyWithImpl(_Refreshed _value, $Res Function(_Refreshed) _then)
      : super(_value, (v) => _then(v as _Refreshed));

  @override
  _Refreshed get _value => super._value as _Refreshed;

  @override
  $Res call({
    Object projectId = freezed,
  }) {
    return _then(_Refreshed(
      projectId == freezed ? _value.projectId : projectId as Option<String>,
    ));
  }
}

/// @nodoc
class _$_Refreshed implements _Refreshed {
  const _$_Refreshed(this.projectId) : assert(projectId != null);

  @override
  final Option<String> projectId;

  @override
  String toString() {
    return 'ScannedNetworksEvent.refreshed(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Refreshed &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @override
  _$RefreshedCopyWith<_Refreshed> get copyWith =>
      __$RefreshedCopyWithImpl<_Refreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<String> projectId),
    @required Result refreshed(Option<String> projectId),
  }) {
    assert(initialized != null);
    assert(refreshed != null);
    return refreshed(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<String> projectId),
    Result refreshed(Option<String> projectId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result refreshed(_Refreshed value),
  }) {
    assert(initialized != null);
    assert(refreshed != null);
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result refreshed(_Refreshed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements ScannedNetworksEvent {
  const factory _Refreshed(Option<String> projectId) = _$_Refreshed;

  @override
  Option<String> get projectId;
  @override
  _$RefreshedCopyWith<_Refreshed> get copyWith;
}

/// @nodoc
class _$ScannedNetworksStateTearOff {
  const _$ScannedNetworksStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<Signal> signals) {
    return LoadSuccess(
      signals,
    );
  }

// ignore: unused_element
  RefreshSuccess refreshSuccess(KtList<Signal> signals) {
    return RefreshSuccess(
      signals,
    );
  }

// ignore: unused_element
  NoNetworksFound noNetworksFound() {
    return const NoNetworksFound();
  }

// ignore: unused_element
  LoadFailure loadFailure(SignalFailure signalFailure) {
    return LoadFailure(
      signalFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ScannedNetworksState = _$ScannedNetworksStateTearOff();

/// @nodoc
mixin _$ScannedNetworksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ScannedNetworksStateCopyWith<$Res> {
  factory $ScannedNetworksStateCopyWith(ScannedNetworksState value,
          $Res Function(ScannedNetworksState) then) =
      _$ScannedNetworksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScannedNetworksStateCopyWithImpl<$Res>
    implements $ScannedNetworksStateCopyWith<$Res> {
  _$ScannedNetworksStateCopyWithImpl(this._value, this._then);

  final ScannedNetworksState _value;
  // ignore: unused_field
  final $Res Function(ScannedNetworksState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
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
    return 'ScannedNetworksState.initial()';
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
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
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
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ScannedNetworksState {
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
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
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
    return 'ScannedNetworksState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
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
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ScannedNetworksState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Signal> signals});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object signals = freezed,
  }) {
    return _then(LoadSuccess(
      signals == freezed ? _value.signals : signals as KtList<Signal>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.signals) : assert(signals != null);

  @override
  final KtList<Signal> signals;

  @override
  String toString() {
    return 'ScannedNetworksState.loadSuccess(signals: $signals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.signals, signals) ||
                const DeepCollectionEquality().equals(other.signals, signals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signals);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadSuccess(signals);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(signals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ScannedNetworksState {
  const factory LoadSuccess(KtList<Signal> signals) = _$LoadSuccess;

  KtList<Signal> get signals;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $RefreshSuccessCopyWith<$Res> {
  factory $RefreshSuccessCopyWith(
          RefreshSuccess value, $Res Function(RefreshSuccess) then) =
      _$RefreshSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Signal> signals});
}

/// @nodoc
class _$RefreshSuccessCopyWithImpl<$Res>
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
    implements $RefreshSuccessCopyWith<$Res> {
  _$RefreshSuccessCopyWithImpl(
      RefreshSuccess _value, $Res Function(RefreshSuccess) _then)
      : super(_value, (v) => _then(v as RefreshSuccess));

  @override
  RefreshSuccess get _value => super._value as RefreshSuccess;

  @override
  $Res call({
    Object signals = freezed,
  }) {
    return _then(RefreshSuccess(
      signals == freezed ? _value.signals : signals as KtList<Signal>,
    ));
  }
}

/// @nodoc
class _$RefreshSuccess implements RefreshSuccess {
  const _$RefreshSuccess(this.signals) : assert(signals != null);

  @override
  final KtList<Signal> signals;

  @override
  String toString() {
    return 'ScannedNetworksState.refreshSuccess(signals: $signals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshSuccess &&
            (identical(other.signals, signals) ||
                const DeepCollectionEquality().equals(other.signals, signals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signals);

  @override
  $RefreshSuccessCopyWith<RefreshSuccess> get copyWith =>
      _$RefreshSuccessCopyWithImpl<RefreshSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return refreshSuccess(signals);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshSuccess != null) {
      return refreshSuccess(signals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshSuccess != null) {
      return refreshSuccess(this);
    }
    return orElse();
  }
}

abstract class RefreshSuccess implements ScannedNetworksState {
  const factory RefreshSuccess(KtList<Signal> signals) = _$RefreshSuccess;

  KtList<Signal> get signals;
  $RefreshSuccessCopyWith<RefreshSuccess> get copyWith;
}

/// @nodoc
abstract class $NoNetworksFoundCopyWith<$Res> {
  factory $NoNetworksFoundCopyWith(
          NoNetworksFound value, $Res Function(NoNetworksFound) then) =
      _$NoNetworksFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoNetworksFoundCopyWithImpl<$Res>
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
    implements $NoNetworksFoundCopyWith<$Res> {
  _$NoNetworksFoundCopyWithImpl(
      NoNetworksFound _value, $Res Function(NoNetworksFound) _then)
      : super(_value, (v) => _then(v as NoNetworksFound));

  @override
  NoNetworksFound get _value => super._value as NoNetworksFound;
}

/// @nodoc
class _$NoNetworksFound implements NoNetworksFound {
  const _$NoNetworksFound();

  @override
  String toString() {
    return 'ScannedNetworksState.noNetworksFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoNetworksFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return noNetworksFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noNetworksFound != null) {
      return noNetworksFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return noNetworksFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noNetworksFound != null) {
      return noNetworksFound(this);
    }
    return orElse();
  }
}

abstract class NoNetworksFound implements ScannedNetworksState {
  const factory NoNetworksFound() = _$NoNetworksFound;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({SignalFailure signalFailure});

  $SignalFailureCopyWith<$Res> get signalFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$ScannedNetworksStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object signalFailure = freezed,
  }) {
    return _then(LoadFailure(
      signalFailure == freezed
          ? _value.signalFailure
          : signalFailure as SignalFailure,
    ));
  }

  @override
  $SignalFailureCopyWith<$Res> get signalFailure {
    if (_value.signalFailure == null) {
      return null;
    }
    return $SignalFailureCopyWith<$Res>(_value.signalFailure, (value) {
      return _then(_value.copyWith(signalFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.signalFailure) : assert(signalFailure != null);

  @override
  final SignalFailure signalFailure;

  @override
  String toString() {
    return 'ScannedNetworksState.loadFailure(signalFailure: $signalFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.signalFailure, signalFailure) ||
                const DeepCollectionEquality()
                    .equals(other.signalFailure, signalFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signalFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Signal> signals),
    @required Result refreshSuccess(KtList<Signal> signals),
    @required Result noNetworksFound(),
    @required Result loadFailure(SignalFailure signalFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadFailure(signalFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Signal> signals),
    Result refreshSuccess(KtList<Signal> signals),
    Result noNetworksFound(),
    Result loadFailure(SignalFailure signalFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(signalFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result refreshSuccess(RefreshSuccess value),
    @required Result noNetworksFound(NoNetworksFound value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(refreshSuccess != null);
    assert(noNetworksFound != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result refreshSuccess(RefreshSuccess value),
    Result noNetworksFound(NoNetworksFound value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ScannedNetworksState {
  const factory LoadFailure(SignalFailure signalFailure) = _$LoadFailure;

  SignalFailure get signalFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

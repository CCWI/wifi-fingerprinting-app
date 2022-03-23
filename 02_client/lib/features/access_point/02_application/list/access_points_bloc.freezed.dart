// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'access_points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccessPointsEventTearOff {
  const _$AccessPointsEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(UniqueId projectId) {
    return _WatchAllStarted(
      projectId,
    );
  }

// ignore: unused_element
  _AccessPointsReceived accessPointsReceived(
      Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects) {
    return _AccessPointsReceived(
      failureOrProjects,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccessPointsEvent = _$AccessPointsEventTearOff();

/// @nodoc
mixin _$AccessPointsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result accessPointsReceived(
            Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result accessPointsReceived(
        Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result accessPointsReceived(_AccessPointsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result accessPointsReceived(_AccessPointsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccessPointsEventCopyWith<$Res> {
  factory $AccessPointsEventCopyWith(
          AccessPointsEvent value, $Res Function(AccessPointsEvent) then) =
      _$AccessPointsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccessPointsEventCopyWithImpl<$Res>
    implements $AccessPointsEventCopyWith<$Res> {
  _$AccessPointsEventCopyWithImpl(this._value, this._then);

  final AccessPointsEvent _value;
  // ignore: unused_field
  final $Res Function(AccessPointsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({UniqueId projectId});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$AccessPointsEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object projectId = freezed,
  }) {
    return _then(_WatchAllStarted(
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.projectId) : assert(projectId != null);

  @override
  final UniqueId projectId;

  @override
  String toString() {
    return 'AccessPointsEvent.watchAllStarted(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result accessPointsReceived(
            Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
  }) {
    assert(watchAllStarted != null);
    assert(accessPointsReceived != null);
    return watchAllStarted(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result accessPointsReceived(
        Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result accessPointsReceived(_AccessPointsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(accessPointsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result accessPointsReceived(_AccessPointsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements AccessPointsEvent {
  const factory _WatchAllStarted(UniqueId projectId) = _$_WatchAllStarted;

  UniqueId get projectId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$AccessPointsReceivedCopyWith<$Res> {
  factory _$AccessPointsReceivedCopyWith(_AccessPointsReceived value,
          $Res Function(_AccessPointsReceived) then) =
      __$AccessPointsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects});
}

/// @nodoc
class __$AccessPointsReceivedCopyWithImpl<$Res>
    extends _$AccessPointsEventCopyWithImpl<$Res>
    implements _$AccessPointsReceivedCopyWith<$Res> {
  __$AccessPointsReceivedCopyWithImpl(
      _AccessPointsReceived _value, $Res Function(_AccessPointsReceived) _then)
      : super(_value, (v) => _then(v as _AccessPointsReceived));

  @override
  _AccessPointsReceived get _value => super._value as _AccessPointsReceived;

  @override
  $Res call({
    Object failureOrProjects = freezed,
  }) {
    return _then(_AccessPointsReceived(
      failureOrProjects == freezed
          ? _value.failureOrProjects
          : failureOrProjects
              as Either<AccessPointFailure, KtList<AccessPoint>>,
    ));
  }
}

/// @nodoc
class _$_AccessPointsReceived implements _AccessPointsReceived {
  const _$_AccessPointsReceived(this.failureOrProjects)
      : assert(failureOrProjects != null);

  @override
  final Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects;

  @override
  String toString() {
    return 'AccessPointsEvent.accessPointsReceived(failureOrProjects: $failureOrProjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessPointsReceived &&
            (identical(other.failureOrProjects, failureOrProjects) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProjects, failureOrProjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProjects);

  @override
  _$AccessPointsReceivedCopyWith<_AccessPointsReceived> get copyWith =>
      __$AccessPointsReceivedCopyWithImpl<_AccessPointsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result accessPointsReceived(
            Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
  }) {
    assert(watchAllStarted != null);
    assert(accessPointsReceived != null);
    return accessPointsReceived(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result accessPointsReceived(
        Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accessPointsReceived != null) {
      return accessPointsReceived(failureOrProjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result accessPointsReceived(_AccessPointsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(accessPointsReceived != null);
    return accessPointsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result accessPointsReceived(_AccessPointsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accessPointsReceived != null) {
      return accessPointsReceived(this);
    }
    return orElse();
  }
}

abstract class _AccessPointsReceived implements AccessPointsEvent {
  const factory _AccessPointsReceived(
          Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects) =
      _$_AccessPointsReceived;

  Either<AccessPointFailure, KtList<AccessPoint>> get failureOrProjects;
  _$AccessPointsReceivedCopyWith<_AccessPointsReceived> get copyWith;
}

/// @nodoc
class _$AccessPointsStateTearOff {
  const _$AccessPointsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<AccessPoint> accessPoints) {
    return LoadSuccess(
      accessPoints,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(AccessPointFailure accessPointFailure) {
    return LoadFailure(
      accessPointFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccessPointsState = _$AccessPointsStateTearOff();

/// @nodoc
mixin _$AccessPointsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<AccessPoint> accessPoints),
    @required Result loadFailure(AccessPointFailure accessPointFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<AccessPoint> accessPoints),
    Result loadFailure(AccessPointFailure accessPointFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccessPointsStateCopyWith<$Res> {
  factory $AccessPointsStateCopyWith(
          AccessPointsState value, $Res Function(AccessPointsState) then) =
      _$AccessPointsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccessPointsStateCopyWithImpl<$Res>
    implements $AccessPointsStateCopyWith<$Res> {
  _$AccessPointsStateCopyWithImpl(this._value, this._then);

  final AccessPointsState _value;
  // ignore: unused_field
  final $Res Function(AccessPointsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AccessPointsStateCopyWithImpl<$Res>
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
    return 'AccessPointsState.initial()';
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
    @required Result loadSuccess(KtList<AccessPoint> accessPoints),
    @required Result loadFailure(AccessPointFailure accessPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<AccessPoint> accessPoints),
    Result loadFailure(AccessPointFailure accessPointFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class Initial implements AccessPointsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$AccessPointsStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

/// @nodoc
class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'AccessPointsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<AccessPoint> accessPoints),
    @required Result loadFailure(AccessPointFailure accessPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<AccessPoint> accessPoints),
    Result loadFailure(AccessPointFailure accessPointFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class DataTransferInProgress implements AccessPointsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<AccessPoint> accessPoints});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$AccessPointsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object accessPoints = freezed,
  }) {
    return _then(LoadSuccess(
      accessPoints == freezed
          ? _value.accessPoints
          : accessPoints as KtList<AccessPoint>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.accessPoints) : assert(accessPoints != null);

  @override
  final KtList<AccessPoint> accessPoints;

  @override
  String toString() {
    return 'AccessPointsState.loadSuccess(accessPoints: $accessPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.accessPoints, accessPoints) ||
                const DeepCollectionEquality()
                    .equals(other.accessPoints, accessPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessPoints);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<AccessPoint> accessPoints),
    @required Result loadFailure(AccessPointFailure accessPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(accessPoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<AccessPoint> accessPoints),
    Result loadFailure(AccessPointFailure accessPointFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(accessPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class LoadSuccess implements AccessPointsState {
  const factory LoadSuccess(KtList<AccessPoint> accessPoints) = _$LoadSuccess;

  KtList<AccessPoint> get accessPoints;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({AccessPointFailure accessPointFailure});

  $AccessPointFailureCopyWith<$Res> get accessPointFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$AccessPointsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object accessPointFailure = freezed,
  }) {
    return _then(LoadFailure(
      accessPointFailure == freezed
          ? _value.accessPointFailure
          : accessPointFailure as AccessPointFailure,
    ));
  }

  @override
  $AccessPointFailureCopyWith<$Res> get accessPointFailure {
    if (_value.accessPointFailure == null) {
      return null;
    }
    return $AccessPointFailureCopyWith<$Res>(_value.accessPointFailure,
        (value) {
      return _then(_value.copyWith(accessPointFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.accessPointFailure)
      : assert(accessPointFailure != null);

  @override
  final AccessPointFailure accessPointFailure;

  @override
  String toString() {
    return 'AccessPointsState.loadFailure(accessPointFailure: $accessPointFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.accessPointFailure, accessPointFailure) ||
                const DeepCollectionEquality()
                    .equals(other.accessPointFailure, accessPointFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessPointFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<AccessPoint> accessPoints),
    @required Result loadFailure(AccessPointFailure accessPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(accessPointFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<AccessPoint> accessPoints),
    Result loadFailure(AccessPointFailure accessPointFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(accessPointFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class LoadFailure implements AccessPointsState {
  const factory LoadFailure(AccessPointFailure accessPointFailure) =
      _$LoadFailure;

  AccessPointFailure get accessPointFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

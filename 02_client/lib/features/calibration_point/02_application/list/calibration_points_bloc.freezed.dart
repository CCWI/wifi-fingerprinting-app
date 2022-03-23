// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationPointsEventTearOff {
  const _$CalibrationPointsEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(UniqueId projectId) {
    return _WatchAllStarted(
      projectId,
    );
  }

// ignore: unused_element
  _CalibrationPointsReceived calibrationPointsReceived(
      Either<CalibrationPointFailure, KtList<CalibrationPoint>>
          failureOrCalibrationPoints) {
    return _CalibrationPointsReceived(
      failureOrCalibrationPoints,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPointsEvent = _$CalibrationPointsEventTearOff();

/// @nodoc
mixin _$CalibrationPointsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result calibrationPointsReceived(
            Either<CalibrationPointFailure, KtList<CalibrationPoint>>
                failureOrCalibrationPoints),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result calibrationPointsReceived(
        Either<CalibrationPointFailure, KtList<CalibrationPoint>>
            failureOrCalibrationPoints),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationPointsReceived(_CalibrationPointsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationPointsReceived(_CalibrationPointsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalibrationPointsEventCopyWith<$Res> {
  factory $CalibrationPointsEventCopyWith(CalibrationPointsEvent value,
          $Res Function(CalibrationPointsEvent) then) =
      _$CalibrationPointsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationPointsEventCopyWithImpl<$Res>
    implements $CalibrationPointsEventCopyWith<$Res> {
  _$CalibrationPointsEventCopyWithImpl(this._value, this._then);

  final CalibrationPointsEvent _value;
  // ignore: unused_field
  final $Res Function(CalibrationPointsEvent) _then;
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
    extends _$CalibrationPointsEventCopyWithImpl<$Res>
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
    return 'CalibrationPointsEvent.watchAllStarted(projectId: $projectId)';
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
        Result calibrationPointsReceived(
            Either<CalibrationPointFailure, KtList<CalibrationPoint>>
                failureOrCalibrationPoints),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationPointsReceived != null);
    return watchAllStarted(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result calibrationPointsReceived(
        Either<CalibrationPointFailure, KtList<CalibrationPoint>>
            failureOrCalibrationPoints),
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
    @required
        Result calibrationPointsReceived(_CalibrationPointsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationPointsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationPointsReceived(_CalibrationPointsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CalibrationPointsEvent {
  const factory _WatchAllStarted(UniqueId projectId) = _$_WatchAllStarted;

  UniqueId get projectId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$CalibrationPointsReceivedCopyWith<$Res> {
  factory _$CalibrationPointsReceivedCopyWith(_CalibrationPointsReceived value,
          $Res Function(_CalibrationPointsReceived) then) =
      __$CalibrationPointsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<CalibrationPointFailure, KtList<CalibrationPoint>>
          failureOrCalibrationPoints});
}

/// @nodoc
class __$CalibrationPointsReceivedCopyWithImpl<$Res>
    extends _$CalibrationPointsEventCopyWithImpl<$Res>
    implements _$CalibrationPointsReceivedCopyWith<$Res> {
  __$CalibrationPointsReceivedCopyWithImpl(_CalibrationPointsReceived _value,
      $Res Function(_CalibrationPointsReceived) _then)
      : super(_value, (v) => _then(v as _CalibrationPointsReceived));

  @override
  _CalibrationPointsReceived get _value =>
      super._value as _CalibrationPointsReceived;

  @override
  $Res call({
    Object failureOrCalibrationPoints = freezed,
  }) {
    return _then(_CalibrationPointsReceived(
      failureOrCalibrationPoints == freezed
          ? _value.failureOrCalibrationPoints
          : failureOrCalibrationPoints
              as Either<CalibrationPointFailure, KtList<CalibrationPoint>>,
    ));
  }
}

/// @nodoc
class _$_CalibrationPointsReceived implements _CalibrationPointsReceived {
  const _$_CalibrationPointsReceived(this.failureOrCalibrationPoints)
      : assert(failureOrCalibrationPoints != null);

  @override
  final Either<CalibrationPointFailure, KtList<CalibrationPoint>>
      failureOrCalibrationPoints;

  @override
  String toString() {
    return 'CalibrationPointsEvent.calibrationPointsReceived(failureOrCalibrationPoints: $failureOrCalibrationPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationPointsReceived &&
            (identical(other.failureOrCalibrationPoints,
                    failureOrCalibrationPoints) ||
                const DeepCollectionEquality().equals(
                    other.failureOrCalibrationPoints,
                    failureOrCalibrationPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCalibrationPoints);

  @override
  _$CalibrationPointsReceivedCopyWith<_CalibrationPointsReceived>
      get copyWith =>
          __$CalibrationPointsReceivedCopyWithImpl<_CalibrationPointsReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result calibrationPointsReceived(
            Either<CalibrationPointFailure, KtList<CalibrationPoint>>
                failureOrCalibrationPoints),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationPointsReceived != null);
    return calibrationPointsReceived(failureOrCalibrationPoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result calibrationPointsReceived(
        Either<CalibrationPointFailure, KtList<CalibrationPoint>>
            failureOrCalibrationPoints),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationPointsReceived != null) {
      return calibrationPointsReceived(failureOrCalibrationPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationPointsReceived(_CalibrationPointsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationPointsReceived != null);
    return calibrationPointsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationPointsReceived(_CalibrationPointsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationPointsReceived != null) {
      return calibrationPointsReceived(this);
    }
    return orElse();
  }
}

abstract class _CalibrationPointsReceived implements CalibrationPointsEvent {
  const factory _CalibrationPointsReceived(
      Either<CalibrationPointFailure, KtList<CalibrationPoint>>
          failureOrCalibrationPoints) = _$_CalibrationPointsReceived;

  Either<CalibrationPointFailure, KtList<CalibrationPoint>>
      get failureOrCalibrationPoints;
  _$CalibrationPointsReceivedCopyWith<_CalibrationPointsReceived> get copyWith;
}

/// @nodoc
class _$CalibrationPointsStateTearOff {
  const _$CalibrationPointsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<CalibrationPoint> calibrationPoints) {
    return LoadSuccess(
      calibrationPoints,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(CalibrationPointFailure calibrationPointFailure) {
    return LoadFailure(
      calibrationPointFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPointsState = _$CalibrationPointsStateTearOff();

/// @nodoc
mixin _$CalibrationPointsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    @required
        Result loadFailure(CalibrationPointFailure calibrationPointFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    Result loadFailure(CalibrationPointFailure calibrationPointFailure),
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
abstract class $CalibrationPointsStateCopyWith<$Res> {
  factory $CalibrationPointsStateCopyWith(CalibrationPointsState value,
          $Res Function(CalibrationPointsState) then) =
      _$CalibrationPointsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationPointsStateCopyWithImpl<$Res>
    implements $CalibrationPointsStateCopyWith<$Res> {
  _$CalibrationPointsStateCopyWithImpl(this._value, this._then);

  final CalibrationPointsState _value;
  // ignore: unused_field
  final $Res Function(CalibrationPointsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$CalibrationPointsStateCopyWithImpl<$Res>
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
    return 'CalibrationPointsState.initial()';
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
    @required Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    @required
        Result loadFailure(CalibrationPointFailure calibrationPointFailure),
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
    Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    Result loadFailure(CalibrationPointFailure calibrationPointFailure),
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

abstract class Initial implements CalibrationPointsState {
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
    extends _$CalibrationPointsStateCopyWithImpl<$Res>
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
    return 'CalibrationPointsState.loadInProgress()';
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
    @required Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    @required
        Result loadFailure(CalibrationPointFailure calibrationPointFailure),
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
    Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    Result loadFailure(CalibrationPointFailure calibrationPointFailure),
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

abstract class DataTransferInProgress implements CalibrationPointsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<CalibrationPoint> calibrationPoints});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$CalibrationPointsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object calibrationPoints = freezed,
  }) {
    return _then(LoadSuccess(
      calibrationPoints == freezed
          ? _value.calibrationPoints
          : calibrationPoints as KtList<CalibrationPoint>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.calibrationPoints)
      : assert(calibrationPoints != null);

  @override
  final KtList<CalibrationPoint> calibrationPoints;

  @override
  String toString() {
    return 'CalibrationPointsState.loadSuccess(calibrationPoints: $calibrationPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.calibrationPoints, calibrationPoints) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPoints, calibrationPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPoints);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    @required
        Result loadFailure(CalibrationPointFailure calibrationPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(calibrationPoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    Result loadFailure(CalibrationPointFailure calibrationPointFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(calibrationPoints);
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

abstract class LoadSuccess implements CalibrationPointsState {
  const factory LoadSuccess(KtList<CalibrationPoint> calibrationPoints) =
      _$LoadSuccess;

  KtList<CalibrationPoint> get calibrationPoints;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({CalibrationPointFailure calibrationPointFailure});

  $CalibrationPointFailureCopyWith<$Res> get calibrationPointFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$CalibrationPointsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object calibrationPointFailure = freezed,
  }) {
    return _then(LoadFailure(
      calibrationPointFailure == freezed
          ? _value.calibrationPointFailure
          : calibrationPointFailure as CalibrationPointFailure,
    ));
  }

  @override
  $CalibrationPointFailureCopyWith<$Res> get calibrationPointFailure {
    if (_value.calibrationPointFailure == null) {
      return null;
    }
    return $CalibrationPointFailureCopyWith<$Res>(
        _value.calibrationPointFailure, (value) {
      return _then(_value.copyWith(calibrationPointFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.calibrationPointFailure)
      : assert(calibrationPointFailure != null);

  @override
  final CalibrationPointFailure calibrationPointFailure;

  @override
  String toString() {
    return 'CalibrationPointsState.loadFailure(calibrationPointFailure: $calibrationPointFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(
                    other.calibrationPointFailure, calibrationPointFailure) ||
                const DeepCollectionEquality().equals(
                    other.calibrationPointFailure, calibrationPointFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPointFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    @required
        Result loadFailure(CalibrationPointFailure calibrationPointFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(calibrationPointFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationPoint> calibrationPoints),
    Result loadFailure(CalibrationPointFailure calibrationPointFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(calibrationPointFailure);
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

abstract class LoadFailure implements CalibrationPointsState {
  const factory LoadFailure(CalibrationPointFailure calibrationPointFailure) =
      _$LoadFailure;

  CalibrationPointFailure get calibrationPointFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

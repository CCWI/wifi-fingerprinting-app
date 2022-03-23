// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_fingerprints_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationFingerprintsEventTearOff {
  const _$CalibrationFingerprintsEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(UniqueId calibrationPointId) {
    return _WatchAllStarted(
      calibrationPointId,
    );
  }

// ignore: unused_element
  _CalibrationFingerprintsReceived calibrationFingerprintsReceived(
      Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
          failureOrProjects) {
    return _CalibrationFingerprintsReceived(
      failureOrProjects,
    );
  }

// ignore: unused_element
  _CalibrationFingerprintDeleted calibrationFingerprintDeleted(
      UniqueId calibrationFingerprintId) {
    return _CalibrationFingerprintDeleted(
      calibrationFingerprintId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationFingerprintsEvent = _$CalibrationFingerprintsEventTearOff();

/// @nodoc
mixin _$CalibrationFingerprintsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId calibrationPointId),
    @required
        Result calibrationFingerprintsReceived(
            Either<CalibrationFingerprintFailure,
                    KtList<CalibrationFingerprint>>
                failureOrProjects),
    @required
        Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId calibrationPointId),
    Result calibrationFingerprintsReceived(
        Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
            failureOrProjects),
    Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationFingerprintsReceived(
            _CalibrationFingerprintsReceived value),
    @required
        Result calibrationFingerprintDeleted(
            _CalibrationFingerprintDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationFingerprintsReceived(
        _CalibrationFingerprintsReceived value),
    Result calibrationFingerprintDeleted(_CalibrationFingerprintDeleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalibrationFingerprintsEventCopyWith<$Res> {
  factory $CalibrationFingerprintsEventCopyWith(
          CalibrationFingerprintsEvent value,
          $Res Function(CalibrationFingerprintsEvent) then) =
      _$CalibrationFingerprintsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationFingerprintsEventCopyWithImpl<$Res>
    implements $CalibrationFingerprintsEventCopyWith<$Res> {
  _$CalibrationFingerprintsEventCopyWithImpl(this._value, this._then);

  final CalibrationFingerprintsEvent _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprintsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({UniqueId calibrationPointId});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object calibrationPointId = freezed,
  }) {
    return _then(_WatchAllStarted(
      calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.calibrationPointId)
      : assert(calibrationPointId != null);

  @override
  final UniqueId calibrationPointId;

  @override
  String toString() {
    return 'CalibrationFingerprintsEvent.watchAllStarted(calibrationPointId: $calibrationPointId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.calibrationPointId, calibrationPointId) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPointId, calibrationPointId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPointId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId calibrationPointId),
    @required
        Result calibrationFingerprintsReceived(
            Either<CalibrationFingerprintFailure,
                    KtList<CalibrationFingerprint>>
                failureOrProjects),
    @required
        Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return watchAllStarted(calibrationPointId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId calibrationPointId),
    Result calibrationFingerprintsReceived(
        Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
            failureOrProjects),
    Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(calibrationPointId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationFingerprintsReceived(
            _CalibrationFingerprintsReceived value),
    @required
        Result calibrationFingerprintDeleted(
            _CalibrationFingerprintDeleted value),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationFingerprintsReceived(
        _CalibrationFingerprintsReceived value),
    Result calibrationFingerprintDeleted(_CalibrationFingerprintDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CalibrationFingerprintsEvent {
  const factory _WatchAllStarted(UniqueId calibrationPointId) =
      _$_WatchAllStarted;

  UniqueId get calibrationPointId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$CalibrationFingerprintsReceivedCopyWith<$Res> {
  factory _$CalibrationFingerprintsReceivedCopyWith(
          _CalibrationFingerprintsReceived value,
          $Res Function(_CalibrationFingerprintsReceived) then) =
      __$CalibrationFingerprintsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
          failureOrProjects});
}

/// @nodoc
class __$CalibrationFingerprintsReceivedCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsEventCopyWithImpl<$Res>
    implements _$CalibrationFingerprintsReceivedCopyWith<$Res> {
  __$CalibrationFingerprintsReceivedCopyWithImpl(
      _CalibrationFingerprintsReceived _value,
      $Res Function(_CalibrationFingerprintsReceived) _then)
      : super(_value, (v) => _then(v as _CalibrationFingerprintsReceived));

  @override
  _CalibrationFingerprintsReceived get _value =>
      super._value as _CalibrationFingerprintsReceived;

  @override
  $Res call({
    Object failureOrProjects = freezed,
  }) {
    return _then(_CalibrationFingerprintsReceived(
      failureOrProjects == freezed
          ? _value.failureOrProjects
          : failureOrProjects as Either<CalibrationFingerprintFailure,
              KtList<CalibrationFingerprint>>,
    ));
  }
}

/// @nodoc
class _$_CalibrationFingerprintsReceived
    implements _CalibrationFingerprintsReceived {
  const _$_CalibrationFingerprintsReceived(this.failureOrProjects)
      : assert(failureOrProjects != null);

  @override
  final Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
      failureOrProjects;

  @override
  String toString() {
    return 'CalibrationFingerprintsEvent.calibrationFingerprintsReceived(failureOrProjects: $failureOrProjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationFingerprintsReceived &&
            (identical(other.failureOrProjects, failureOrProjects) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProjects, failureOrProjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProjects);

  @override
  _$CalibrationFingerprintsReceivedCopyWith<_CalibrationFingerprintsReceived>
      get copyWith => __$CalibrationFingerprintsReceivedCopyWithImpl<
          _CalibrationFingerprintsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId calibrationPointId),
    @required
        Result calibrationFingerprintsReceived(
            Either<CalibrationFingerprintFailure,
                    KtList<CalibrationFingerprint>>
                failureOrProjects),
    @required
        Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return calibrationFingerprintsReceived(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId calibrationPointId),
    Result calibrationFingerprintsReceived(
        Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
            failureOrProjects),
    Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationFingerprintsReceived != null) {
      return calibrationFingerprintsReceived(failureOrProjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationFingerprintsReceived(
            _CalibrationFingerprintsReceived value),
    @required
        Result calibrationFingerprintDeleted(
            _CalibrationFingerprintDeleted value),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return calibrationFingerprintsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationFingerprintsReceived(
        _CalibrationFingerprintsReceived value),
    Result calibrationFingerprintDeleted(_CalibrationFingerprintDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationFingerprintsReceived != null) {
      return calibrationFingerprintsReceived(this);
    }
    return orElse();
  }
}

abstract class _CalibrationFingerprintsReceived
    implements CalibrationFingerprintsEvent {
  const factory _CalibrationFingerprintsReceived(
      Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
          failureOrProjects) = _$_CalibrationFingerprintsReceived;

  Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
      get failureOrProjects;
  _$CalibrationFingerprintsReceivedCopyWith<_CalibrationFingerprintsReceived>
      get copyWith;
}

/// @nodoc
abstract class _$CalibrationFingerprintDeletedCopyWith<$Res> {
  factory _$CalibrationFingerprintDeletedCopyWith(
          _CalibrationFingerprintDeleted value,
          $Res Function(_CalibrationFingerprintDeleted) then) =
      __$CalibrationFingerprintDeletedCopyWithImpl<$Res>;
  $Res call({UniqueId calibrationFingerprintId});
}

/// @nodoc
class __$CalibrationFingerprintDeletedCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsEventCopyWithImpl<$Res>
    implements _$CalibrationFingerprintDeletedCopyWith<$Res> {
  __$CalibrationFingerprintDeletedCopyWithImpl(
      _CalibrationFingerprintDeleted _value,
      $Res Function(_CalibrationFingerprintDeleted) _then)
      : super(_value, (v) => _then(v as _CalibrationFingerprintDeleted));

  @override
  _CalibrationFingerprintDeleted get _value =>
      super._value as _CalibrationFingerprintDeleted;

  @override
  $Res call({
    Object calibrationFingerprintId = freezed,
  }) {
    return _then(_CalibrationFingerprintDeleted(
      calibrationFingerprintId == freezed
          ? _value.calibrationFingerprintId
          : calibrationFingerprintId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_CalibrationFingerprintDeleted
    implements _CalibrationFingerprintDeleted {
  const _$_CalibrationFingerprintDeleted(this.calibrationFingerprintId)
      : assert(calibrationFingerprintId != null);

  @override
  final UniqueId calibrationFingerprintId;

  @override
  String toString() {
    return 'CalibrationFingerprintsEvent.calibrationFingerprintDeleted(calibrationFingerprintId: $calibrationFingerprintId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationFingerprintDeleted &&
            (identical(
                    other.calibrationFingerprintId, calibrationFingerprintId) ||
                const DeepCollectionEquality().equals(
                    other.calibrationFingerprintId, calibrationFingerprintId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationFingerprintId);

  @override
  _$CalibrationFingerprintDeletedCopyWith<_CalibrationFingerprintDeleted>
      get copyWith => __$CalibrationFingerprintDeletedCopyWithImpl<
          _CalibrationFingerprintDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId calibrationPointId),
    @required
        Result calibrationFingerprintsReceived(
            Either<CalibrationFingerprintFailure,
                    KtList<CalibrationFingerprint>>
                failureOrProjects),
    @required
        Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return calibrationFingerprintDeleted(calibrationFingerprintId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId calibrationPointId),
    Result calibrationFingerprintsReceived(
        Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>
            failureOrProjects),
    Result calibrationFingerprintDeleted(UniqueId calibrationFingerprintId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationFingerprintDeleted != null) {
      return calibrationFingerprintDeleted(calibrationFingerprintId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required
        Result calibrationFingerprintsReceived(
            _CalibrationFingerprintsReceived value),
    @required
        Result calibrationFingerprintDeleted(
            _CalibrationFingerprintDeleted value),
  }) {
    assert(watchAllStarted != null);
    assert(calibrationFingerprintsReceived != null);
    assert(calibrationFingerprintDeleted != null);
    return calibrationFingerprintDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result calibrationFingerprintsReceived(
        _CalibrationFingerprintsReceived value),
    Result calibrationFingerprintDeleted(_CalibrationFingerprintDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calibrationFingerprintDeleted != null) {
      return calibrationFingerprintDeleted(this);
    }
    return orElse();
  }
}

abstract class _CalibrationFingerprintDeleted
    implements CalibrationFingerprintsEvent {
  const factory _CalibrationFingerprintDeleted(
      UniqueId calibrationFingerprintId) = _$_CalibrationFingerprintDeleted;

  UniqueId get calibrationFingerprintId;
  _$CalibrationFingerprintDeletedCopyWith<_CalibrationFingerprintDeleted>
      get copyWith;
}

/// @nodoc
class _$CalibrationFingerprintsStateTearOff {
  const _$CalibrationFingerprintsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(
      KtList<CalibrationFingerprint> calibrationFingerprints) {
    return LoadSuccess(
      calibrationFingerprints,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(
      CalibrationFingerprintFailure calibrationFingerprintFailure) {
    return LoadFailure(
      calibrationFingerprintFailure,
    );
  }

// ignore: unused_element
  DeletionSuccess deletionSuccess() {
    return const DeletionSuccess();
  }

// ignore: unused_element
  DeletionFailure deletionFailure(
      CalibrationFingerprintFailure calibrationFingerprintFailure) {
    return DeletionFailure(
      calibrationFingerprintFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationFingerprintsState = _$CalibrationFingerprintsStateTearOff();

/// @nodoc
mixin _$CalibrationFingerprintsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalibrationFingerprintsStateCopyWith<$Res> {
  factory $CalibrationFingerprintsStateCopyWith(
          CalibrationFingerprintsState value,
          $Res Function(CalibrationFingerprintsState) then) =
      _$CalibrationFingerprintsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationFingerprintsStateCopyWithImpl<$Res>
    implements $CalibrationFingerprintsStateCopyWith<$Res> {
  _$CalibrationFingerprintsStateCopyWithImpl(this._value, this._then);

  final CalibrationFingerprintsState _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprintsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
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
    return 'CalibrationFingerprintsState.initial()';
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
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CalibrationFingerprintsState {
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
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
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
    return 'CalibrationFingerprintsState.loadInProgress()';
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
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements CalibrationFingerprintsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<CalibrationFingerprint> calibrationFingerprints});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object calibrationFingerprints = freezed,
  }) {
    return _then(LoadSuccess(
      calibrationFingerprints == freezed
          ? _value.calibrationFingerprints
          : calibrationFingerprints as KtList<CalibrationFingerprint>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.calibrationFingerprints)
      : assert(calibrationFingerprints != null);

  @override
  final KtList<CalibrationFingerprint> calibrationFingerprints;

  @override
  String toString() {
    return 'CalibrationFingerprintsState.loadSuccess(calibrationFingerprints: $calibrationFingerprints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(
                    other.calibrationFingerprints, calibrationFingerprints) ||
                const DeepCollectionEquality().equals(
                    other.calibrationFingerprints, calibrationFingerprints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationFingerprints);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadSuccess(calibrationFingerprints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(calibrationFingerprints);
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements CalibrationFingerprintsState {
  const factory LoadSuccess(
      KtList<CalibrationFingerprint> calibrationFingerprints) = _$LoadSuccess;

  KtList<CalibrationFingerprint> get calibrationFingerprints;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({CalibrationFingerprintFailure calibrationFingerprintFailure});

  $CalibrationFingerprintFailureCopyWith<$Res>
      get calibrationFingerprintFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object calibrationFingerprintFailure = freezed,
  }) {
    return _then(LoadFailure(
      calibrationFingerprintFailure == freezed
          ? _value.calibrationFingerprintFailure
          : calibrationFingerprintFailure as CalibrationFingerprintFailure,
    ));
  }

  @override
  $CalibrationFingerprintFailureCopyWith<$Res>
      get calibrationFingerprintFailure {
    if (_value.calibrationFingerprintFailure == null) {
      return null;
    }
    return $CalibrationFingerprintFailureCopyWith<$Res>(
        _value.calibrationFingerprintFailure, (value) {
      return _then(_value.copyWith(calibrationFingerprintFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.calibrationFingerprintFailure)
      : assert(calibrationFingerprintFailure != null);

  @override
  final CalibrationFingerprintFailure calibrationFingerprintFailure;

  @override
  String toString() {
    return 'CalibrationFingerprintsState.loadFailure(calibrationFingerprintFailure: $calibrationFingerprintFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.calibrationFingerprintFailure,
                    calibrationFingerprintFailure) ||
                const DeepCollectionEquality().equals(
                    other.calibrationFingerprintFailure,
                    calibrationFingerprintFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationFingerprintFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadFailure(calibrationFingerprintFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(calibrationFingerprintFailure);
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements CalibrationFingerprintsState {
  const factory LoadFailure(
          CalibrationFingerprintFailure calibrationFingerprintFailure) =
      _$LoadFailure;

  CalibrationFingerprintFailure get calibrationFingerprintFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

/// @nodoc
abstract class $DeletionSuccessCopyWith<$Res> {
  factory $DeletionSuccessCopyWith(
          DeletionSuccess value, $Res Function(DeletionSuccess) then) =
      _$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletionSuccessCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
    implements $DeletionSuccessCopyWith<$Res> {
  _$DeletionSuccessCopyWithImpl(
      DeletionSuccess _value, $Res Function(DeletionSuccess) _then)
      : super(_value, (v) => _then(v as DeletionSuccess));

  @override
  DeletionSuccess get _value => super._value as DeletionSuccess;
}

/// @nodoc
class _$DeletionSuccess implements DeletionSuccess {
  const _$DeletionSuccess();

  @override
  String toString() {
    return 'CalibrationFingerprintsState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess();
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class DeletionSuccess implements CalibrationFingerprintsState {
  const factory DeletionSuccess() = _$DeletionSuccess;
}

/// @nodoc
abstract class $DeletionFailureCopyWith<$Res> {
  factory $DeletionFailureCopyWith(
          DeletionFailure value, $Res Function(DeletionFailure) then) =
      _$DeletionFailureCopyWithImpl<$Res>;
  $Res call({CalibrationFingerprintFailure calibrationFingerprintFailure});

  $CalibrationFingerprintFailureCopyWith<$Res>
      get calibrationFingerprintFailure;
}

/// @nodoc
class _$DeletionFailureCopyWithImpl<$Res>
    extends _$CalibrationFingerprintsStateCopyWithImpl<$Res>
    implements $DeletionFailureCopyWith<$Res> {
  _$DeletionFailureCopyWithImpl(
      DeletionFailure _value, $Res Function(DeletionFailure) _then)
      : super(_value, (v) => _then(v as DeletionFailure));

  @override
  DeletionFailure get _value => super._value as DeletionFailure;

  @override
  $Res call({
    Object calibrationFingerprintFailure = freezed,
  }) {
    return _then(DeletionFailure(
      calibrationFingerprintFailure == freezed
          ? _value.calibrationFingerprintFailure
          : calibrationFingerprintFailure as CalibrationFingerprintFailure,
    ));
  }

  @override
  $CalibrationFingerprintFailureCopyWith<$Res>
      get calibrationFingerprintFailure {
    if (_value.calibrationFingerprintFailure == null) {
      return null;
    }
    return $CalibrationFingerprintFailureCopyWith<$Res>(
        _value.calibrationFingerprintFailure, (value) {
      return _then(_value.copyWith(calibrationFingerprintFailure: value));
    });
  }
}

/// @nodoc
class _$DeletionFailure implements DeletionFailure {
  const _$DeletionFailure(this.calibrationFingerprintFailure)
      : assert(calibrationFingerprintFailure != null);

  @override
  final CalibrationFingerprintFailure calibrationFingerprintFailure;

  @override
  String toString() {
    return 'CalibrationFingerprintsState.deletionFailure(calibrationFingerprintFailure: $calibrationFingerprintFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletionFailure &&
            (identical(other.calibrationFingerprintFailure,
                    calibrationFingerprintFailure) ||
                const DeepCollectionEquality().equals(
                    other.calibrationFingerprintFailure,
                    calibrationFingerprintFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationFingerprintFailure);

  @override
  $DeletionFailureCopyWith<DeletionFailure> get copyWith =>
      _$DeletionFailureCopyWithImpl<DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<CalibrationFingerprint> calibrationFingerprints),
    @required
        Result loadFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result deletionSuccess(),
    @required
        Result deletionFailure(
            CalibrationFingerprintFailure calibrationFingerprintFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionFailure(calibrationFingerprintFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CalibrationFingerprint> calibrationFingerprints),
    Result loadFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    Result deletionSuccess(),
    Result deletionFailure(
        CalibrationFingerprintFailure calibrationFingerprintFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(calibrationFingerprintFailure);
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
    @required Result deletionSuccess(DeletionSuccess value),
    @required Result deletionFailure(DeletionFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    Result deletionSuccess(DeletionSuccess value),
    Result deletionFailure(DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class DeletionFailure implements CalibrationFingerprintsState {
  const factory DeletionFailure(
          CalibrationFingerprintFailure calibrationFingerprintFailure) =
      _$DeletionFailure;

  CalibrationFingerprintFailure get calibrationFingerprintFailure;
  $DeletionFailureCopyWith<DeletionFailure> get copyWith;
}

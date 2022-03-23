// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cells_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CellsEventTearOff {
  const _$CellsEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(UniqueId projectId) {
    return _WatchAllStarted(
      projectId,
    );
  }

// ignore: unused_element
  _CellsReceived cellsReceived(
      Either<CellFailure, KtList<Cell>> failureOrCells) {
    return _CellsReceived(
      failureOrCells,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CellsEvent = _$CellsEventTearOff();

/// @nodoc
mixin _$CellsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result cellsReceived(_CellsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result cellsReceived(_CellsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CellsEventCopyWith<$Res> {
  factory $CellsEventCopyWith(
          CellsEvent value, $Res Function(CellsEvent) then) =
      _$CellsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CellsEventCopyWithImpl<$Res> implements $CellsEventCopyWith<$Res> {
  _$CellsEventCopyWithImpl(this._value, this._then);

  final CellsEvent _value;
  // ignore: unused_field
  final $Res Function(CellsEvent) _then;
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
    extends _$CellsEventCopyWithImpl<$Res>
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
    return 'CellsEvent.watchAllStarted(projectId: $projectId)';
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
        Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
  }) {
    assert(watchAllStarted != null);
    assert(cellsReceived != null);
    return watchAllStarted(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
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
    @required Result cellsReceived(_CellsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(cellsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result cellsReceived(_CellsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CellsEvent {
  const factory _WatchAllStarted(UniqueId projectId) = _$_WatchAllStarted;

  UniqueId get projectId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$CellsReceivedCopyWith<$Res> {
  factory _$CellsReceivedCopyWith(
          _CellsReceived value, $Res Function(_CellsReceived) then) =
      __$CellsReceivedCopyWithImpl<$Res>;
  $Res call({Either<CellFailure, KtList<Cell>> failureOrCells});
}

/// @nodoc
class __$CellsReceivedCopyWithImpl<$Res> extends _$CellsEventCopyWithImpl<$Res>
    implements _$CellsReceivedCopyWith<$Res> {
  __$CellsReceivedCopyWithImpl(
      _CellsReceived _value, $Res Function(_CellsReceived) _then)
      : super(_value, (v) => _then(v as _CellsReceived));

  @override
  _CellsReceived get _value => super._value as _CellsReceived;

  @override
  $Res call({
    Object failureOrCells = freezed,
  }) {
    return _then(_CellsReceived(
      failureOrCells == freezed
          ? _value.failureOrCells
          : failureOrCells as Either<CellFailure, KtList<Cell>>,
    ));
  }
}

/// @nodoc
class _$_CellsReceived implements _CellsReceived {
  const _$_CellsReceived(this.failureOrCells) : assert(failureOrCells != null);

  @override
  final Either<CellFailure, KtList<Cell>> failureOrCells;

  @override
  String toString() {
    return 'CellsEvent.cellsReceived(failureOrCells: $failureOrCells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CellsReceived &&
            (identical(other.failureOrCells, failureOrCells) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCells, failureOrCells)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCells);

  @override
  _$CellsReceivedCopyWith<_CellsReceived> get copyWith =>
      __$CellsReceivedCopyWithImpl<_CellsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId projectId),
    @required
        Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
  }) {
    assert(watchAllStarted != null);
    assert(cellsReceived != null);
    return cellsReceived(failureOrCells);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId projectId),
    Result cellsReceived(Either<CellFailure, KtList<Cell>> failureOrCells),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cellsReceived != null) {
      return cellsReceived(failureOrCells);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result cellsReceived(_CellsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(cellsReceived != null);
    return cellsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result cellsReceived(_CellsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cellsReceived != null) {
      return cellsReceived(this);
    }
    return orElse();
  }
}

abstract class _CellsReceived implements CellsEvent {
  const factory _CellsReceived(
      Either<CellFailure, KtList<Cell>> failureOrCells) = _$_CellsReceived;

  Either<CellFailure, KtList<Cell>> get failureOrCells;
  _$CellsReceivedCopyWith<_CellsReceived> get copyWith;
}

/// @nodoc
class _$CellsStateTearOff {
  const _$CellsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<Cell> cells) {
    return LoadSuccess(
      cells,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(CellFailure cellFailure) {
    return LoadFailure(
      cellFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CellsState = _$CellsStateTearOff();

/// @nodoc
mixin _$CellsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Cell> cells),
    @required Result loadFailure(CellFailure cellFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Cell> cells),
    Result loadFailure(CellFailure cellFailure),
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
abstract class $CellsStateCopyWith<$Res> {
  factory $CellsStateCopyWith(
          CellsState value, $Res Function(CellsState) then) =
      _$CellsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CellsStateCopyWithImpl<$Res> implements $CellsStateCopyWith<$Res> {
  _$CellsStateCopyWithImpl(this._value, this._then);

  final CellsState _value;
  // ignore: unused_field
  final $Res Function(CellsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CellsStateCopyWithImpl<$Res>
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
    return 'CellsState.initial()';
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
    @required Result loadSuccess(KtList<Cell> cells),
    @required Result loadFailure(CellFailure cellFailure),
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
    Result loadSuccess(KtList<Cell> cells),
    Result loadFailure(CellFailure cellFailure),
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

abstract class Initial implements CellsState {
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
    extends _$CellsStateCopyWithImpl<$Res>
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
    return 'CellsState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Cell> cells),
    @required Result loadFailure(CellFailure cellFailure),
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
    Result loadSuccess(KtList<Cell> cells),
    Result loadFailure(CellFailure cellFailure),
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

abstract class DataTransferInProgress implements CellsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Cell> cells});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$CellsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object cells = freezed,
  }) {
    return _then(LoadSuccess(
      cells == freezed ? _value.cells : cells as KtList<Cell>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.cells) : assert(cells != null);

  @override
  final KtList<Cell> cells;

  @override
  String toString() {
    return 'CellsState.loadSuccess(cells: $cells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.cells, cells) ||
                const DeepCollectionEquality().equals(other.cells, cells)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cells);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Cell> cells),
    @required Result loadFailure(CellFailure cellFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(cells);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Cell> cells),
    Result loadFailure(CellFailure cellFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(cells);
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

abstract class LoadSuccess implements CellsState {
  const factory LoadSuccess(KtList<Cell> cells) = _$LoadSuccess;

  KtList<Cell> get cells;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({CellFailure cellFailure});

  $CellFailureCopyWith<$Res> get cellFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$CellsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object cellFailure = freezed,
  }) {
    return _then(LoadFailure(
      cellFailure == freezed ? _value.cellFailure : cellFailure as CellFailure,
    ));
  }

  @override
  $CellFailureCopyWith<$Res> get cellFailure {
    if (_value.cellFailure == null) {
      return null;
    }
    return $CellFailureCopyWith<$Res>(_value.cellFailure, (value) {
      return _then(_value.copyWith(cellFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.cellFailure) : assert(cellFailure != null);

  @override
  final CellFailure cellFailure;

  @override
  String toString() {
    return 'CellsState.loadFailure(cellFailure: $cellFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.cellFailure, cellFailure) ||
                const DeepCollectionEquality()
                    .equals(other.cellFailure, cellFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cellFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Cell> cells),
    @required Result loadFailure(CellFailure cellFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(cellFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Cell> cells),
    Result loadFailure(CellFailure cellFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(cellFailure);
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

abstract class LoadFailure implements CellsState {
  const factory LoadFailure(CellFailure cellFailure) = _$LoadFailure;

  CellFailure get cellFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cell_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CellFormEventTearOff {
  const _$CellFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Cell> initialCellOption, UniqueId projectId) {
    return _Initialized(
      initialCellOption,
      projectId,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _FloorChanged floorChanged(String floorStr) {
    return _FloorChanged(
      floorStr,
    );
  }

// ignore: unused_element
  _VerticesChanged verticesChanged(KtList<VertexPrimitive> vertices) {
    return _VerticesChanged(
      vertices,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }

// ignore: unused_element
  _Deleted deleted(UniqueId id) {
    return _Deleted(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CellFormEvent = _$CellFormEventTearOff();

/// @nodoc
mixin _$CellFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CellFormEventCopyWith<$Res> {
  factory $CellFormEventCopyWith(
          CellFormEvent value, $Res Function(CellFormEvent) then) =
      _$CellFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CellFormEventCopyWithImpl<$Res>
    implements $CellFormEventCopyWith<$Res> {
  _$CellFormEventCopyWithImpl(this._value, this._then);

  final CellFormEvent _value;
  // ignore: unused_field
  final $Res Function(CellFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Cell> initialCellOption, UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$CellFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialCellOption = freezed,
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      initialCellOption == freezed
          ? _value.initialCellOption
          : initialCellOption as Option<Cell>,
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialCellOption, this.projectId)
      : assert(initialCellOption != null),
        assert(projectId != null);

  @override
  final Option<Cell> initialCellOption;
  @override
  final UniqueId projectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.initialized(initialCellOption: $initialCellOption, projectId: $projectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormEvent.initialized'))
      ..add(DiagnosticsProperty('initialCellOption', initialCellOption))
      ..add(DiagnosticsProperty('projectId', projectId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialCellOption, initialCellOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialCellOption, initialCellOption)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialCellOption) ^
      const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(initialCellOption, projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialCellOption, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CellFormEvent {
  const factory _Initialized(
      Option<Cell> initialCellOption, UniqueId projectId) = _$_Initialized;

  Option<Cell> get initialCellOption;
  UniqueId get projectId;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$CellFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('nameStr', nameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CellFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$FloorChangedCopyWith<$Res> {
  factory _$FloorChangedCopyWith(
          _FloorChanged value, $Res Function(_FloorChanged) then) =
      __$FloorChangedCopyWithImpl<$Res>;
  $Res call({String floorStr});
}

/// @nodoc
class __$FloorChangedCopyWithImpl<$Res>
    extends _$CellFormEventCopyWithImpl<$Res>
    implements _$FloorChangedCopyWith<$Res> {
  __$FloorChangedCopyWithImpl(
      _FloorChanged _value, $Res Function(_FloorChanged) _then)
      : super(_value, (v) => _then(v as _FloorChanged));

  @override
  _FloorChanged get _value => super._value as _FloorChanged;

  @override
  $Res call({
    Object floorStr = freezed,
  }) {
    return _then(_FloorChanged(
      floorStr == freezed ? _value.floorStr : floorStr as String,
    ));
  }
}

/// @nodoc
class _$_FloorChanged with DiagnosticableTreeMixin implements _FloorChanged {
  const _$_FloorChanged(this.floorStr) : assert(floorStr != null);

  @override
  final String floorStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.floorChanged(floorStr: $floorStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormEvent.floorChanged'))
      ..add(DiagnosticsProperty('floorStr', floorStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorChanged &&
            (identical(other.floorStr, floorStr) ||
                const DeepCollectionEquality()
                    .equals(other.floorStr, floorStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(floorStr);

  @override
  _$FloorChangedCopyWith<_FloorChanged> get copyWith =>
      __$FloorChangedCopyWithImpl<_FloorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorChanged(floorStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorChanged != null) {
      return floorChanged(floorStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorChanged != null) {
      return floorChanged(this);
    }
    return orElse();
  }
}

abstract class _FloorChanged implements CellFormEvent {
  const factory _FloorChanged(String floorStr) = _$_FloorChanged;

  String get floorStr;
  _$FloorChangedCopyWith<_FloorChanged> get copyWith;
}

/// @nodoc
abstract class _$VerticesChangedCopyWith<$Res> {
  factory _$VerticesChangedCopyWith(
          _VerticesChanged value, $Res Function(_VerticesChanged) then) =
      __$VerticesChangedCopyWithImpl<$Res>;
  $Res call({KtList<VertexPrimitive> vertices});
}

/// @nodoc
class __$VerticesChangedCopyWithImpl<$Res>
    extends _$CellFormEventCopyWithImpl<$Res>
    implements _$VerticesChangedCopyWith<$Res> {
  __$VerticesChangedCopyWithImpl(
      _VerticesChanged _value, $Res Function(_VerticesChanged) _then)
      : super(_value, (v) => _then(v as _VerticesChanged));

  @override
  _VerticesChanged get _value => super._value as _VerticesChanged;

  @override
  $Res call({
    Object vertices = freezed,
  }) {
    return _then(_VerticesChanged(
      vertices == freezed
          ? _value.vertices
          : vertices as KtList<VertexPrimitive>,
    ));
  }
}

/// @nodoc
class _$_VerticesChanged
    with DiagnosticableTreeMixin
    implements _VerticesChanged {
  const _$_VerticesChanged(this.vertices) : assert(vertices != null);

  @override
  final KtList<VertexPrimitive> vertices;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.verticesChanged(vertices: $vertices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormEvent.verticesChanged'))
      ..add(DiagnosticsProperty('vertices', vertices));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerticesChanged &&
            (identical(other.vertices, vertices) ||
                const DeepCollectionEquality()
                    .equals(other.vertices, vertices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vertices);

  @override
  _$VerticesChangedCopyWith<_VerticesChanged> get copyWith =>
      __$VerticesChangedCopyWithImpl<_VerticesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return verticesChanged(vertices);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticesChanged != null) {
      return verticesChanged(vertices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return verticesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticesChanged != null) {
      return verticesChanged(this);
    }
    return orElse();
  }
}

abstract class _VerticesChanged implements CellFormEvent {
  const factory _VerticesChanged(KtList<VertexPrimitive> vertices) =
      _$_VerticesChanged;

  KtList<VertexPrimitive> get vertices;
  _$VerticesChangedCopyWith<_VerticesChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$CellFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CellFormEvent.saved'));
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
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
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
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CellFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$CellFormEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_Deleted(
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Deleted with DiagnosticableTreeMixin implements _Deleted {
  const _$_Deleted(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormEvent.deleted(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormEvent.deleted'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result floorChanged(String floorStr),
    @required Result verticesChanged(KtList<VertexPrimitive> vertices),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Cell> initialCellOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result floorChanged(String floorStr),
    Result verticesChanged(KtList<VertexPrimitive> vertices),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result verticesChanged(_VerticesChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorChanged != null);
    assert(verticesChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorChanged(_FloorChanged value),
    Result verticesChanged(_VerticesChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CellFormEvent {
  const factory _Deleted(UniqueId id) = _$_Deleted;

  UniqueId get id;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$CellFormStateTearOff {
  const _$CellFormStateTearOff();

// ignore: unused_element
  _CellFormState call(
      {@required
          Cell cell,
      @required
          bool showErrorMessages,
      @required
          bool isInitial,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isDeleting,
      @required
          Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption,
      @required
          Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption}) {
    return _CellFormState(
      cell: cell,
      showErrorMessages: showErrorMessages,
      isInitial: isInitial,
      isEditing: isEditing,
      isSaving: isSaving,
      isDeleting: isDeleting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CellFormState = _$CellFormStateTearOff();

/// @nodoc
mixin _$CellFormState {
  Cell get cell;
  bool get showErrorMessages;
  bool get isInitial;
  bool get isEditing;
  bool get isSaving;
  bool get isDeleting;
  Option<Either<CellFailure, Unit>> get saveFailureOrSuccessOption;
  Option<Either<CellFailure, Unit>> get deleteFailureOrSuccessOption;

  $CellFormStateCopyWith<CellFormState> get copyWith;
}

/// @nodoc
abstract class $CellFormStateCopyWith<$Res> {
  factory $CellFormStateCopyWith(
          CellFormState value, $Res Function(CellFormState) then) =
      _$CellFormStateCopyWithImpl<$Res>;
  $Res call(
      {Cell cell,
      bool showErrorMessages,
      bool isInitial,
      bool isEditing,
      bool isSaving,
      bool isDeleting,
      Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption});

  $CellCopyWith<$Res> get cell;
}

/// @nodoc
class _$CellFormStateCopyWithImpl<$Res>
    implements $CellFormStateCopyWith<$Res> {
  _$CellFormStateCopyWithImpl(this._value, this._then);

  final CellFormState _value;
  // ignore: unused_field
  final $Res Function(CellFormState) _then;

  @override
  $Res call({
    Object cell = freezed,
    Object showErrorMessages = freezed,
    Object isInitial = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      cell: cell == freezed ? _value.cell : cell as Cell,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<CellFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<CellFailure, Unit>>,
    ));
  }

  @override
  $CellCopyWith<$Res> get cell {
    if (_value.cell == null) {
      return null;
    }
    return $CellCopyWith<$Res>(_value.cell, (value) {
      return _then(_value.copyWith(cell: value));
    });
  }
}

/// @nodoc
abstract class _$CellFormStateCopyWith<$Res>
    implements $CellFormStateCopyWith<$Res> {
  factory _$CellFormStateCopyWith(
          _CellFormState value, $Res Function(_CellFormState) then) =
      __$CellFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Cell cell,
      bool showErrorMessages,
      bool isInitial,
      bool isEditing,
      bool isSaving,
      bool isDeleting,
      Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption});

  @override
  $CellCopyWith<$Res> get cell;
}

/// @nodoc
class __$CellFormStateCopyWithImpl<$Res>
    extends _$CellFormStateCopyWithImpl<$Res>
    implements _$CellFormStateCopyWith<$Res> {
  __$CellFormStateCopyWithImpl(
      _CellFormState _value, $Res Function(_CellFormState) _then)
      : super(_value, (v) => _then(v as _CellFormState));

  @override
  _CellFormState get _value => super._value as _CellFormState;

  @override
  $Res call({
    Object cell = freezed,
    Object showErrorMessages = freezed,
    Object isInitial = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_CellFormState(
      cell: cell == freezed ? _value.cell : cell as Cell,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<CellFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption as Option<Either<CellFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CellFormState with DiagnosticableTreeMixin implements _CellFormState {
  const _$_CellFormState(
      {@required this.cell,
      @required this.showErrorMessages,
      @required this.isInitial,
      @required this.isEditing,
      @required this.isSaving,
      @required this.isDeleting,
      @required this.saveFailureOrSuccessOption,
      @required this.deleteFailureOrSuccessOption})
      : assert(cell != null),
        assert(showErrorMessages != null),
        assert(isInitial != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(isDeleting != null),
        assert(saveFailureOrSuccessOption != null),
        assert(deleteFailureOrSuccessOption != null);

  @override
  final Cell cell;
  @override
  final bool showErrorMessages;
  @override
  final bool isInitial;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isDeleting;
  @override
  final Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CellFormState(cell: $cell, showErrorMessages: $showErrorMessages, isInitial: $isInitial, isEditing: $isEditing, isSaving: $isSaving, isDeleting: $isDeleting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CellFormState'))
      ..add(DiagnosticsProperty('cell', cell))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isInitial', isInitial))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isDeleting', isDeleting))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'deleteFailureOrSuccessOption', deleteFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CellFormState &&
            (identical(other.cell, cell) ||
                const DeepCollectionEquality().equals(other.cell, cell)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isInitial, isInitial) ||
                const DeepCollectionEquality()
                    .equals(other.isInitial, isInitial)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cell) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isInitial) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption);

  @override
  _$CellFormStateCopyWith<_CellFormState> get copyWith =>
      __$CellFormStateCopyWithImpl<_CellFormState>(this, _$identity);
}

abstract class _CellFormState implements CellFormState {
  const factory _CellFormState(
          {@required
              Cell cell,
          @required
              bool showErrorMessages,
          @required
              bool isInitial,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              bool isDeleting,
          @required
              Option<Either<CellFailure, Unit>> saveFailureOrSuccessOption,
          @required
              Option<Either<CellFailure, Unit>> deleteFailureOrSuccessOption}) =
      _$_CellFormState;

  @override
  Cell get cell;
  @override
  bool get showErrorMessages;
  @override
  bool get isInitial;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isDeleting;
  @override
  Option<Either<CellFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  Option<Either<CellFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  _$CellFormStateCopyWith<_CellFormState> get copyWith;
}

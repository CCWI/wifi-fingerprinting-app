// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CellTearOff {
  const _$CellTearOff();

// ignore: unused_element
  _Cell call(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required Name name,
      @required List4<Position> vertices}) {
    return _Cell(
      id: id,
      projectId: projectId,
      name: name,
      vertices: vertices,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Cell = _$CellTearOff();

/// @nodoc
mixin _$Cell {
  UniqueId get id;
  UniqueId get projectId;
  Name get name;
  List4<Position> get vertices;

  $CellCopyWith<Cell> get copyWith;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, UniqueId projectId, Name name, List4<Position> vertices});
}

/// @nodoc
class _$CellCopyWithImpl<$Res> implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  final Cell _value;
  // ignore: unused_field
  final $Res Function(Cell) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object vertices = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      vertices:
          vertices == freezed ? _value.vertices : vertices as List4<Position>,
    ));
  }
}

/// @nodoc
abstract class _$CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$CellCopyWith(_Cell value, $Res Function(_Cell) then) =
      __$CellCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, UniqueId projectId, Name name, List4<Position> vertices});
}

/// @nodoc
class __$CellCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res>
    implements _$CellCopyWith<$Res> {
  __$CellCopyWithImpl(_Cell _value, $Res Function(_Cell) _then)
      : super(_value, (v) => _then(v as _Cell));

  @override
  _Cell get _value => super._value as _Cell;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object vertices = freezed,
  }) {
    return _then(_Cell(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      vertices:
          vertices == freezed ? _value.vertices : vertices as List4<Position>,
    ));
  }
}

/// @nodoc
class _$_Cell implements _Cell {
  const _$_Cell(
      {@required this.id,
      @required this.projectId,
      @required this.name,
      @required this.vertices})
      : assert(id != null),
        assert(projectId != null),
        assert(name != null),
        assert(vertices != null);

  @override
  final UniqueId id;
  @override
  final UniqueId projectId;
  @override
  final Name name;
  @override
  final List4<Position> vertices;

  @override
  String toString() {
    return 'Cell(id: $id, projectId: $projectId, name: $name, vertices: $vertices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cell &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vertices, vertices) ||
                const DeepCollectionEquality()
                    .equals(other.vertices, vertices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vertices);

  @override
  _$CellCopyWith<_Cell> get copyWith =>
      __$CellCopyWithImpl<_Cell>(this, _$identity);
}

abstract class _Cell implements Cell {
  const factory _Cell(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required Name name,
      @required List4<Position> vertices}) = _$_Cell;

  @override
  UniqueId get id;
  @override
  UniqueId get projectId;
  @override
  Name get name;
  @override
  List4<Position> get vertices;
  @override
  _$CellCopyWith<_Cell> get copyWith;
}

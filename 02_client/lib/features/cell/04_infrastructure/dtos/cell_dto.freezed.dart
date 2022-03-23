// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cell_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CellDto _$CellDtoFromJson(Map<String, dynamic> json) {
  return _CellDto.fromJson(json);
}

/// @nodoc
class _$CellDtoTearOff {
  const _$CellDtoTearOff();

// ignore: unused_element
  _CellDto call(
      {@required String id,
      @required String projectId,
      @required String name,
      @required List<PositionDto> vertices}) {
    return _CellDto(
      id: id,
      projectId: projectId,
      name: name,
      vertices: vertices,
    );
  }

// ignore: unused_element
  CellDto fromJson(Map<String, Object> json) {
    return CellDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CellDto = _$CellDtoTearOff();

/// @nodoc
mixin _$CellDto {
  String get id;
  String get projectId;
  String get name;
  List<PositionDto> get vertices;

  Map<String, dynamic> toJson();
  $CellDtoCopyWith<CellDto> get copyWith;
}

/// @nodoc
abstract class $CellDtoCopyWith<$Res> {
  factory $CellDtoCopyWith(CellDto value, $Res Function(CellDto) then) =
      _$CellDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String projectId, String name, List<PositionDto> vertices});
}

/// @nodoc
class _$CellDtoCopyWithImpl<$Res> implements $CellDtoCopyWith<$Res> {
  _$CellDtoCopyWithImpl(this._value, this._then);

  final CellDto _value;
  // ignore: unused_field
  final $Res Function(CellDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object vertices = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      vertices:
          vertices == freezed ? _value.vertices : vertices as List<PositionDto>,
    ));
  }
}

/// @nodoc
abstract class _$CellDtoCopyWith<$Res> implements $CellDtoCopyWith<$Res> {
  factory _$CellDtoCopyWith(_CellDto value, $Res Function(_CellDto) then) =
      __$CellDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String projectId, String name, List<PositionDto> vertices});
}

/// @nodoc
class __$CellDtoCopyWithImpl<$Res> extends _$CellDtoCopyWithImpl<$Res>
    implements _$CellDtoCopyWith<$Res> {
  __$CellDtoCopyWithImpl(_CellDto _value, $Res Function(_CellDto) _then)
      : super(_value, (v) => _then(v as _CellDto));

  @override
  _CellDto get _value => super._value as _CellDto;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object vertices = freezed,
  }) {
    return _then(_CellDto(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      vertices:
          vertices == freezed ? _value.vertices : vertices as List<PositionDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CellDto implements _CellDto {
  _$_CellDto(
      {@required this.id,
      @required this.projectId,
      @required this.name,
      @required this.vertices})
      : assert(id != null),
        assert(projectId != null),
        assert(name != null),
        assert(vertices != null);

  factory _$_CellDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CellDtoFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String name;
  @override
  final List<PositionDto> vertices;

  @override
  String toString() {
    return 'CellDto(id: $id, projectId: $projectId, name: $name, vertices: $vertices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CellDto &&
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
  _$CellDtoCopyWith<_CellDto> get copyWith =>
      __$CellDtoCopyWithImpl<_CellDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CellDtoToJson(this);
  }
}

abstract class _CellDto implements CellDto {
  factory _CellDto(
      {@required String id,
      @required String projectId,
      @required String name,
      @required List<PositionDto> vertices}) = _$_CellDto;

  factory _CellDto.fromJson(Map<String, dynamic> json) = _$_CellDto.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get name;
  @override
  List<PositionDto> get vertices;
  @override
  _$CellDtoCopyWith<_CellDto> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CalibrationPointDto _$CalibrationPointDtoFromJson(Map<String, dynamic> json) {
  return _CalibrationPointDto.fromJson(json);
}

/// @nodoc
class _$CalibrationPointDtoTearOff {
  const _$CalibrationPointDtoTearOff();

// ignore: unused_element
  _CalibrationPointDto call(
      {@required String id,
      @required String projectId,
      @required String name,
      @required Map<String, double> radioMap,
      @required PositionDto position}) {
    return _CalibrationPointDto(
      id: id,
      projectId: projectId,
      name: name,
      radioMap: radioMap,
      position: position,
    );
  }

// ignore: unused_element
  CalibrationPointDto fromJson(Map<String, Object> json) {
    return CalibrationPointDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPointDto = _$CalibrationPointDtoTearOff();

/// @nodoc
mixin _$CalibrationPointDto {
  String get id;
  String get projectId;
  String get name;
  Map<String, double> get radioMap;
  PositionDto get position;

  Map<String, dynamic> toJson();
  $CalibrationPointDtoCopyWith<CalibrationPointDto> get copyWith;
}

/// @nodoc
abstract class $CalibrationPointDtoCopyWith<$Res> {
  factory $CalibrationPointDtoCopyWith(
          CalibrationPointDto value, $Res Function(CalibrationPointDto) then) =
      _$CalibrationPointDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String projectId,
      String name,
      Map<String, double> radioMap,
      PositionDto position});

  $PositionDtoCopyWith<$Res> get position;
}

/// @nodoc
class _$CalibrationPointDtoCopyWithImpl<$Res>
    implements $CalibrationPointDtoCopyWith<$Res> {
  _$CalibrationPointDtoCopyWithImpl(this._value, this._then);

  final CalibrationPointDto _value;
  // ignore: unused_field
  final $Res Function(CalibrationPointDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object radioMap = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      radioMap: radioMap == freezed
          ? _value.radioMap
          : radioMap as Map<String, double>,
      position: position == freezed ? _value.position : position as PositionDto,
    ));
  }

  @override
  $PositionDtoCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $PositionDtoCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$CalibrationPointDtoCopyWith<$Res>
    implements $CalibrationPointDtoCopyWith<$Res> {
  factory _$CalibrationPointDtoCopyWith(_CalibrationPointDto value,
          $Res Function(_CalibrationPointDto) then) =
      __$CalibrationPointDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String projectId,
      String name,
      Map<String, double> radioMap,
      PositionDto position});

  @override
  $PositionDtoCopyWith<$Res> get position;
}

/// @nodoc
class __$CalibrationPointDtoCopyWithImpl<$Res>
    extends _$CalibrationPointDtoCopyWithImpl<$Res>
    implements _$CalibrationPointDtoCopyWith<$Res> {
  __$CalibrationPointDtoCopyWithImpl(
      _CalibrationPointDto _value, $Res Function(_CalibrationPointDto) _then)
      : super(_value, (v) => _then(v as _CalibrationPointDto));

  @override
  _CalibrationPointDto get _value => super._value as _CalibrationPointDto;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object radioMap = freezed,
    Object position = freezed,
  }) {
    return _then(_CalibrationPointDto(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      radioMap: radioMap == freezed
          ? _value.radioMap
          : radioMap as Map<String, double>,
      position: position == freezed ? _value.position : position as PositionDto,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CalibrationPointDto implements _CalibrationPointDto {
  _$_CalibrationPointDto(
      {@required this.id,
      @required this.projectId,
      @required this.name,
      @required this.radioMap,
      @required this.position})
      : assert(id != null),
        assert(projectId != null),
        assert(name != null),
        assert(radioMap != null),
        assert(position != null);

  factory _$_CalibrationPointDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CalibrationPointDtoFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String name;
  @override
  final Map<String, double> radioMap;
  @override
  final PositionDto position;

  @override
  String toString() {
    return 'CalibrationPointDto(id: $id, projectId: $projectId, name: $name, radioMap: $radioMap, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationPointDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.radioMap, radioMap) ||
                const DeepCollectionEquality()
                    .equals(other.radioMap, radioMap)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(radioMap) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$CalibrationPointDtoCopyWith<_CalibrationPointDto> get copyWith =>
      __$CalibrationPointDtoCopyWithImpl<_CalibrationPointDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CalibrationPointDtoToJson(this);
  }
}

abstract class _CalibrationPointDto implements CalibrationPointDto {
  factory _CalibrationPointDto(
      {@required String id,
      @required String projectId,
      @required String name,
      @required Map<String, double> radioMap,
      @required PositionDto position}) = _$_CalibrationPointDto;

  factory _CalibrationPointDto.fromJson(Map<String, dynamic> json) =
      _$_CalibrationPointDto.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get name;
  @override
  Map<String, double> get radioMap;
  @override
  PositionDto get position;
  @override
  _$CalibrationPointDtoCopyWith<_CalibrationPointDto> get copyWith;
}

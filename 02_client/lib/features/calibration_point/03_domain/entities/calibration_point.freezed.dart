// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationPointTearOff {
  const _$CalibrationPointTearOff();

// ignore: unused_element
  _CalibrationPoint call(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required Name name,
      @required KtMap<BSSID, RSS> radioMap,
      @required Position position}) {
    return _CalibrationPoint(
      id: id,
      projectId: projectId,
      name: name,
      radioMap: radioMap,
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPoint = _$CalibrationPointTearOff();

/// @nodoc
mixin _$CalibrationPoint {
  UniqueId get id;
  UniqueId get projectId;
  Name get name;
  KtMap<BSSID, RSS> get radioMap;
  Position get position;

  $CalibrationPointCopyWith<CalibrationPoint> get copyWith;
}

/// @nodoc
abstract class $CalibrationPointCopyWith<$Res> {
  factory $CalibrationPointCopyWith(
          CalibrationPoint value, $Res Function(CalibrationPoint) then) =
      _$CalibrationPointCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      Name name,
      KtMap<BSSID, RSS> radioMap,
      Position position});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$CalibrationPointCopyWithImpl<$Res>
    implements $CalibrationPointCopyWith<$Res> {
  _$CalibrationPointCopyWithImpl(this._value, this._then);

  final CalibrationPoint _value;
  // ignore: unused_field
  final $Res Function(CalibrationPoint) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object radioMap = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      radioMap:
          radioMap == freezed ? _value.radioMap : radioMap as KtMap<BSSID, RSS>,
      position: position == freezed ? _value.position : position as Position,
    ));
  }

  @override
  $PositionCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$CalibrationPointCopyWith<$Res>
    implements $CalibrationPointCopyWith<$Res> {
  factory _$CalibrationPointCopyWith(
          _CalibrationPoint value, $Res Function(_CalibrationPoint) then) =
      __$CalibrationPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      Name name,
      KtMap<BSSID, RSS> radioMap,
      Position position});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$CalibrationPointCopyWithImpl<$Res>
    extends _$CalibrationPointCopyWithImpl<$Res>
    implements _$CalibrationPointCopyWith<$Res> {
  __$CalibrationPointCopyWithImpl(
      _CalibrationPoint _value, $Res Function(_CalibrationPoint) _then)
      : super(_value, (v) => _then(v as _CalibrationPoint));

  @override
  _CalibrationPoint get _value => super._value as _CalibrationPoint;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object radioMap = freezed,
    Object position = freezed,
  }) {
    return _then(_CalibrationPoint(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      radioMap:
          radioMap == freezed ? _value.radioMap : radioMap as KtMap<BSSID, RSS>,
      position: position == freezed ? _value.position : position as Position,
    ));
  }
}

/// @nodoc
class _$_CalibrationPoint implements _CalibrationPoint {
  const _$_CalibrationPoint(
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

  @override
  final UniqueId id;
  @override
  final UniqueId projectId;
  @override
  final Name name;
  @override
  final KtMap<BSSID, RSS> radioMap;
  @override
  final Position position;

  @override
  String toString() {
    return 'CalibrationPoint(id: $id, projectId: $projectId, name: $name, radioMap: $radioMap, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationPoint &&
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
  _$CalibrationPointCopyWith<_CalibrationPoint> get copyWith =>
      __$CalibrationPointCopyWithImpl<_CalibrationPoint>(this, _$identity);
}

abstract class _CalibrationPoint implements CalibrationPoint {
  const factory _CalibrationPoint(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required Name name,
      @required KtMap<BSSID, RSS> radioMap,
      @required Position position}) = _$_CalibrationPoint;

  @override
  UniqueId get id;
  @override
  UniqueId get projectId;
  @override
  Name get name;
  @override
  KtMap<BSSID, RSS> get radioMap;
  @override
  Position get position;
  @override
  _$CalibrationPointCopyWith<_CalibrationPoint> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'access_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccessPointTearOff {
  const _$AccessPointTearOff();

// ignore: unused_element
  _AccessPoint call(
      {@required UniqueId id,
      @required UniqueId projectId,
      Name name,
      @required SSID ssid,
      @required BSSID bssid}) {
    return _AccessPoint(
      id: id,
      projectId: projectId,
      name: name,
      ssid: ssid,
      bssid: bssid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccessPoint = _$AccessPointTearOff();

/// @nodoc
mixin _$AccessPoint {
  UniqueId get id;
  UniqueId get projectId;
  Name get name;
  SSID get ssid;
  BSSID get bssid;

  $AccessPointCopyWith<AccessPoint> get copyWith;
}

/// @nodoc
abstract class $AccessPointCopyWith<$Res> {
  factory $AccessPointCopyWith(
          AccessPoint value, $Res Function(AccessPoint) then) =
      _$AccessPointCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, UniqueId projectId, Name name, SSID ssid, BSSID bssid});
}

/// @nodoc
class _$AccessPointCopyWithImpl<$Res> implements $AccessPointCopyWith<$Res> {
  _$AccessPointCopyWithImpl(this._value, this._then);

  final AccessPoint _value;
  // ignore: unused_field
  final $Res Function(AccessPoint) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object ssid = freezed,
    Object bssid = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      ssid: ssid == freezed ? _value.ssid : ssid as SSID,
      bssid: bssid == freezed ? _value.bssid : bssid as BSSID,
    ));
  }
}

/// @nodoc
abstract class _$AccessPointCopyWith<$Res>
    implements $AccessPointCopyWith<$Res> {
  factory _$AccessPointCopyWith(
          _AccessPoint value, $Res Function(_AccessPoint) then) =
      __$AccessPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, UniqueId projectId, Name name, SSID ssid, BSSID bssid});
}

/// @nodoc
class __$AccessPointCopyWithImpl<$Res> extends _$AccessPointCopyWithImpl<$Res>
    implements _$AccessPointCopyWith<$Res> {
  __$AccessPointCopyWithImpl(
      _AccessPoint _value, $Res Function(_AccessPoint) _then)
      : super(_value, (v) => _then(v as _AccessPoint));

  @override
  _AccessPoint get _value => super._value as _AccessPoint;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object ssid = freezed,
    Object bssid = freezed,
  }) {
    return _then(_AccessPoint(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      ssid: ssid == freezed ? _value.ssid : ssid as SSID,
      bssid: bssid == freezed ? _value.bssid : bssid as BSSID,
    ));
  }
}

/// @nodoc
class _$_AccessPoint implements _AccessPoint {
  const _$_AccessPoint(
      {@required this.id,
      @required this.projectId,
      this.name,
      @required this.ssid,
      @required this.bssid})
      : assert(id != null),
        assert(projectId != null),
        assert(ssid != null),
        assert(bssid != null);

  @override
  final UniqueId id;
  @override
  final UniqueId projectId;
  @override
  final Name name;
  @override
  final SSID ssid;
  @override
  final BSSID bssid;

  @override
  String toString() {
    return 'AccessPoint(id: $id, projectId: $projectId, name: $name, ssid: $ssid, bssid: $bssid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessPoint &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ssid, ssid) ||
                const DeepCollectionEquality().equals(other.ssid, ssid)) &&
            (identical(other.bssid, bssid) ||
                const DeepCollectionEquality().equals(other.bssid, bssid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ssid) ^
      const DeepCollectionEquality().hash(bssid);

  @override
  _$AccessPointCopyWith<_AccessPoint> get copyWith =>
      __$AccessPointCopyWithImpl<_AccessPoint>(this, _$identity);
}

abstract class _AccessPoint implements AccessPoint {
  const factory _AccessPoint(
      {@required UniqueId id,
      @required UniqueId projectId,
      Name name,
      @required SSID ssid,
      @required BSSID bssid}) = _$_AccessPoint;

  @override
  UniqueId get id;
  @override
  UniqueId get projectId;
  @override
  Name get name;
  @override
  SSID get ssid;
  @override
  BSSID get bssid;
  @override
  _$AccessPointCopyWith<_AccessPoint> get copyWith;
}

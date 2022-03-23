// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'access_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccessPointDto _$AccessPointDtoFromJson(Map<String, dynamic> json) {
  return _AccessPointDto.fromJson(json);
}

/// @nodoc
class _$AccessPointDtoTearOff {
  const _$AccessPointDtoTearOff();

// ignore: unused_element
  _AccessPointDto call(
      {@required String id,
      @required String projectId,
      String name,
      @required String ssid,
      @required String bssid}) {
    return _AccessPointDto(
      id: id,
      projectId: projectId,
      name: name,
      ssid: ssid,
      bssid: bssid,
    );
  }

// ignore: unused_element
  AccessPointDto fromJson(Map<String, Object> json) {
    return AccessPointDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccessPointDto = _$AccessPointDtoTearOff();

/// @nodoc
mixin _$AccessPointDto {
  String get id;
  String get projectId;
  String get name;
  String get ssid;
  String get bssid;

  Map<String, dynamic> toJson();
  $AccessPointDtoCopyWith<AccessPointDto> get copyWith;
}

/// @nodoc
abstract class $AccessPointDtoCopyWith<$Res> {
  factory $AccessPointDtoCopyWith(
          AccessPointDto value, $Res Function(AccessPointDto) then) =
      _$AccessPointDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String projectId, String name, String ssid, String bssid});
}

/// @nodoc
class _$AccessPointDtoCopyWithImpl<$Res>
    implements $AccessPointDtoCopyWith<$Res> {
  _$AccessPointDtoCopyWithImpl(this._value, this._then);

  final AccessPointDto _value;
  // ignore: unused_field
  final $Res Function(AccessPointDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object ssid = freezed,
    Object bssid = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      ssid: ssid == freezed ? _value.ssid : ssid as String,
      bssid: bssid == freezed ? _value.bssid : bssid as String,
    ));
  }
}

/// @nodoc
abstract class _$AccessPointDtoCopyWith<$Res>
    implements $AccessPointDtoCopyWith<$Res> {
  factory _$AccessPointDtoCopyWith(
          _AccessPointDto value, $Res Function(_AccessPointDto) then) =
      __$AccessPointDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String projectId, String name, String ssid, String bssid});
}

/// @nodoc
class __$AccessPointDtoCopyWithImpl<$Res>
    extends _$AccessPointDtoCopyWithImpl<$Res>
    implements _$AccessPointDtoCopyWith<$Res> {
  __$AccessPointDtoCopyWithImpl(
      _AccessPointDto _value, $Res Function(_AccessPointDto) _then)
      : super(_value, (v) => _then(v as _AccessPointDto));

  @override
  _AccessPointDto get _value => super._value as _AccessPointDto;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object name = freezed,
    Object ssid = freezed,
    Object bssid = freezed,
  }) {
    return _then(_AccessPointDto(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      name: name == freezed ? _value.name : name as String,
      ssid: ssid == freezed ? _value.ssid : ssid as String,
      bssid: bssid == freezed ? _value.bssid : bssid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccessPointDto implements _AccessPointDto {
  _$_AccessPointDto(
      {@required this.id,
      @required this.projectId,
      this.name,
      @required this.ssid,
      @required this.bssid})
      : assert(id != null),
        assert(projectId != null),
        assert(ssid != null),
        assert(bssid != null);

  factory _$_AccessPointDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AccessPointDtoFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String name;
  @override
  final String ssid;
  @override
  final String bssid;

  @override
  String toString() {
    return 'AccessPointDto(id: $id, projectId: $projectId, name: $name, ssid: $ssid, bssid: $bssid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessPointDto &&
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
  _$AccessPointDtoCopyWith<_AccessPointDto> get copyWith =>
      __$AccessPointDtoCopyWithImpl<_AccessPointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccessPointDtoToJson(this);
  }
}

abstract class _AccessPointDto implements AccessPointDto {
  factory _AccessPointDto(
      {@required String id,
      @required String projectId,
      String name,
      @required String ssid,
      @required String bssid}) = _$_AccessPointDto;

  factory _AccessPointDto.fromJson(Map<String, dynamic> json) =
      _$_AccessPointDto.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get name;
  @override
  String get ssid;
  @override
  String get bssid;
  @override
  _$AccessPointDtoCopyWith<_AccessPointDto> get copyWith;
}

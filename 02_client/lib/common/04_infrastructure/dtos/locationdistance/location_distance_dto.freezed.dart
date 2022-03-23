// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_distance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationDistanceDto _$LocationDistanceDtoFromJson(Map<String, dynamic> json) {
  return _LocationDistanceDto.fromJson(json);
}

/// @nodoc
class _$LocationDistanceDtoTearOff {
  const _$LocationDistanceDtoTearOff();

// ignore: unused_element
  _LocationDistanceDto call(
      {@required String calibrationPointId,
      @required String calibrationPointName,
      @required PositionDto calibrationPointPosition,
      @required double distance}) {
    return _LocationDistanceDto(
      calibrationPointId: calibrationPointId,
      calibrationPointName: calibrationPointName,
      calibrationPointPosition: calibrationPointPosition,
      distance: distance,
    );
  }

// ignore: unused_element
  LocationDistanceDto fromJson(Map<String, Object> json) {
    return LocationDistanceDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocationDistanceDto = _$LocationDistanceDtoTearOff();

/// @nodoc
mixin _$LocationDistanceDto {
  String get calibrationPointId;
  String get calibrationPointName;
  PositionDto get calibrationPointPosition;
  double get distance;

  Map<String, dynamic> toJson();
  $LocationDistanceDtoCopyWith<LocationDistanceDto> get copyWith;
}

/// @nodoc
abstract class $LocationDistanceDtoCopyWith<$Res> {
  factory $LocationDistanceDtoCopyWith(
          LocationDistanceDto value, $Res Function(LocationDistanceDto) then) =
      _$LocationDistanceDtoCopyWithImpl<$Res>;
  $Res call(
      {String calibrationPointId,
      String calibrationPointName,
      PositionDto calibrationPointPosition,
      double distance});

  $PositionDtoCopyWith<$Res> get calibrationPointPosition;
}

/// @nodoc
class _$LocationDistanceDtoCopyWithImpl<$Res>
    implements $LocationDistanceDtoCopyWith<$Res> {
  _$LocationDistanceDtoCopyWithImpl(this._value, this._then);

  final LocationDistanceDto _value;
  // ignore: unused_field
  final $Res Function(LocationDistanceDto) _then;

  @override
  $Res call({
    Object calibrationPointId = freezed,
    Object calibrationPointName = freezed,
    Object calibrationPointPosition = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      calibrationPointName: calibrationPointName == freezed
          ? _value.calibrationPointName
          : calibrationPointName as String,
      calibrationPointPosition: calibrationPointPosition == freezed
          ? _value.calibrationPointPosition
          : calibrationPointPosition as PositionDto,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }

  @override
  $PositionDtoCopyWith<$Res> get calibrationPointPosition {
    if (_value.calibrationPointPosition == null) {
      return null;
    }
    return $PositionDtoCopyWith<$Res>(_value.calibrationPointPosition, (value) {
      return _then(_value.copyWith(calibrationPointPosition: value));
    });
  }
}

/// @nodoc
abstract class _$LocationDistanceDtoCopyWith<$Res>
    implements $LocationDistanceDtoCopyWith<$Res> {
  factory _$LocationDistanceDtoCopyWith(_LocationDistanceDto value,
          $Res Function(_LocationDistanceDto) then) =
      __$LocationDistanceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String calibrationPointId,
      String calibrationPointName,
      PositionDto calibrationPointPosition,
      double distance});

  @override
  $PositionDtoCopyWith<$Res> get calibrationPointPosition;
}

/// @nodoc
class __$LocationDistanceDtoCopyWithImpl<$Res>
    extends _$LocationDistanceDtoCopyWithImpl<$Res>
    implements _$LocationDistanceDtoCopyWith<$Res> {
  __$LocationDistanceDtoCopyWithImpl(
      _LocationDistanceDto _value, $Res Function(_LocationDistanceDto) _then)
      : super(_value, (v) => _then(v as _LocationDistanceDto));

  @override
  _LocationDistanceDto get _value => super._value as _LocationDistanceDto;

  @override
  $Res call({
    Object calibrationPointId = freezed,
    Object calibrationPointName = freezed,
    Object calibrationPointPosition = freezed,
    Object distance = freezed,
  }) {
    return _then(_LocationDistanceDto(
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      calibrationPointName: calibrationPointName == freezed
          ? _value.calibrationPointName
          : calibrationPointName as String,
      calibrationPointPosition: calibrationPointPosition == freezed
          ? _value.calibrationPointPosition
          : calibrationPointPosition as PositionDto,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocationDistanceDto implements _LocationDistanceDto {
  _$_LocationDistanceDto(
      {@required this.calibrationPointId,
      @required this.calibrationPointName,
      @required this.calibrationPointPosition,
      @required this.distance})
      : assert(calibrationPointId != null),
        assert(calibrationPointName != null),
        assert(calibrationPointPosition != null),
        assert(distance != null);

  factory _$_LocationDistanceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationDistanceDtoFromJson(json);

  @override
  final String calibrationPointId;
  @override
  final String calibrationPointName;
  @override
  final PositionDto calibrationPointPosition;
  @override
  final double distance;

  @override
  String toString() {
    return 'LocationDistanceDto(calibrationPointId: $calibrationPointId, calibrationPointName: $calibrationPointName, calibrationPointPosition: $calibrationPointPosition, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationDistanceDto &&
            (identical(other.calibrationPointId, calibrationPointId) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPointId, calibrationPointId)) &&
            (identical(other.calibrationPointName, calibrationPointName) ||
                const DeepCollectionEquality().equals(
                    other.calibrationPointName, calibrationPointName)) &&
            (identical(
                    other.calibrationPointPosition, calibrationPointPosition) ||
                const DeepCollectionEquality().equals(
                    other.calibrationPointPosition,
                    calibrationPointPosition)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPointId) ^
      const DeepCollectionEquality().hash(calibrationPointName) ^
      const DeepCollectionEquality().hash(calibrationPointPosition) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$LocationDistanceDtoCopyWith<_LocationDistanceDto> get copyWith =>
      __$LocationDistanceDtoCopyWithImpl<_LocationDistanceDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationDistanceDtoToJson(this);
  }
}

abstract class _LocationDistanceDto implements LocationDistanceDto {
  factory _LocationDistanceDto(
      {@required String calibrationPointId,
      @required String calibrationPointName,
      @required PositionDto calibrationPointPosition,
      @required double distance}) = _$_LocationDistanceDto;

  factory _LocationDistanceDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDistanceDto.fromJson;

  @override
  String get calibrationPointId;
  @override
  String get calibrationPointName;
  @override
  PositionDto get calibrationPointPosition;
  @override
  double get distance;
  @override
  _$LocationDistanceDtoCopyWith<_LocationDistanceDto> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_distance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationDistanceTearOff {
  const _$LocationDistanceTearOff();

// ignore: unused_element
  _LocationDistance call(
      {@required UniqueId calibrationPointId,
      @required Name calibrationPointName,
      @required Position calibrationPointPosition,
      @required Distance distance}) {
    return _LocationDistance(
      calibrationPointId: calibrationPointId,
      calibrationPointName: calibrationPointName,
      calibrationPointPosition: calibrationPointPosition,
      distance: distance,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationDistance = _$LocationDistanceTearOff();

/// @nodoc
mixin _$LocationDistance {
  UniqueId get calibrationPointId;
  Name get calibrationPointName;
  Position get calibrationPointPosition;
  Distance get distance;

  $LocationDistanceCopyWith<LocationDistance> get copyWith;
}

/// @nodoc
abstract class $LocationDistanceCopyWith<$Res> {
  factory $LocationDistanceCopyWith(
          LocationDistance value, $Res Function(LocationDistance) then) =
      _$LocationDistanceCopyWithImpl<$Res>;
  $Res call(
      {UniqueId calibrationPointId,
      Name calibrationPointName,
      Position calibrationPointPosition,
      Distance distance});

  $PositionCopyWith<$Res> get calibrationPointPosition;
}

/// @nodoc
class _$LocationDistanceCopyWithImpl<$Res>
    implements $LocationDistanceCopyWith<$Res> {
  _$LocationDistanceCopyWithImpl(this._value, this._then);

  final LocationDistance _value;
  // ignore: unused_field
  final $Res Function(LocationDistance) _then;

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
          : calibrationPointId as UniqueId,
      calibrationPointName: calibrationPointName == freezed
          ? _value.calibrationPointName
          : calibrationPointName as Name,
      calibrationPointPosition: calibrationPointPosition == freezed
          ? _value.calibrationPointPosition
          : calibrationPointPosition as Position,
      distance: distance == freezed ? _value.distance : distance as Distance,
    ));
  }

  @override
  $PositionCopyWith<$Res> get calibrationPointPosition {
    if (_value.calibrationPointPosition == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.calibrationPointPosition, (value) {
      return _then(_value.copyWith(calibrationPointPosition: value));
    });
  }
}

/// @nodoc
abstract class _$LocationDistanceCopyWith<$Res>
    implements $LocationDistanceCopyWith<$Res> {
  factory _$LocationDistanceCopyWith(
          _LocationDistance value, $Res Function(_LocationDistance) then) =
      __$LocationDistanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId calibrationPointId,
      Name calibrationPointName,
      Position calibrationPointPosition,
      Distance distance});

  @override
  $PositionCopyWith<$Res> get calibrationPointPosition;
}

/// @nodoc
class __$LocationDistanceCopyWithImpl<$Res>
    extends _$LocationDistanceCopyWithImpl<$Res>
    implements _$LocationDistanceCopyWith<$Res> {
  __$LocationDistanceCopyWithImpl(
      _LocationDistance _value, $Res Function(_LocationDistance) _then)
      : super(_value, (v) => _then(v as _LocationDistance));

  @override
  _LocationDistance get _value => super._value as _LocationDistance;

  @override
  $Res call({
    Object calibrationPointId = freezed,
    Object calibrationPointName = freezed,
    Object calibrationPointPosition = freezed,
    Object distance = freezed,
  }) {
    return _then(_LocationDistance(
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      calibrationPointName: calibrationPointName == freezed
          ? _value.calibrationPointName
          : calibrationPointName as Name,
      calibrationPointPosition: calibrationPointPosition == freezed
          ? _value.calibrationPointPosition
          : calibrationPointPosition as Position,
      distance: distance == freezed ? _value.distance : distance as Distance,
    ));
  }
}

/// @nodoc
class _$_LocationDistance implements _LocationDistance {
  const _$_LocationDistance(
      {@required this.calibrationPointId,
      @required this.calibrationPointName,
      @required this.calibrationPointPosition,
      @required this.distance})
      : assert(calibrationPointId != null),
        assert(calibrationPointName != null),
        assert(calibrationPointPosition != null),
        assert(distance != null);

  @override
  final UniqueId calibrationPointId;
  @override
  final Name calibrationPointName;
  @override
  final Position calibrationPointPosition;
  @override
  final Distance distance;

  @override
  String toString() {
    return 'LocationDistance(calibrationPointId: $calibrationPointId, calibrationPointName: $calibrationPointName, calibrationPointPosition: $calibrationPointPosition, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationDistance &&
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
  _$LocationDistanceCopyWith<_LocationDistance> get copyWith =>
      __$LocationDistanceCopyWithImpl<_LocationDistance>(this, _$identity);
}

abstract class _LocationDistance implements LocationDistance {
  const factory _LocationDistance(
      {@required UniqueId calibrationPointId,
      @required Name calibrationPointName,
      @required Position calibrationPointPosition,
      @required Distance distance}) = _$_LocationDistance;

  @override
  UniqueId get calibrationPointId;
  @override
  Name get calibrationPointName;
  @override
  Position get calibrationPointPosition;
  @override
  Distance get distance;
  @override
  _$LocationDistanceCopyWith<_LocationDistance> get copyWith;
}

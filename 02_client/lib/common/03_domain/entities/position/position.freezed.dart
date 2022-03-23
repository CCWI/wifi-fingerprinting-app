// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PositionTearOff {
  const _$PositionTearOff();

// ignore: unused_element
  _Position call(
      {@required CoordinateValue x,
      @required CoordinateValue y,
      @required FloorNumber floor}) {
    return _Position(
      x: x,
      y: y,
      floor: floor,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Position = _$PositionTearOff();

/// @nodoc
mixin _$Position {
  CoordinateValue get x;
  CoordinateValue get y;
  FloorNumber get floor;

  $PositionCopyWith<Position> get copyWith;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({CoordinateValue x, CoordinateValue y, FloorNumber floor});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed ? _value.x : x as CoordinateValue,
      y: y == freezed ? _value.y : y as CoordinateValue,
      floor: floor == freezed ? _value.floor : floor as FloorNumber,
    ));
  }
}

/// @nodoc
abstract class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) then) =
      __$PositionCopyWithImpl<$Res>;
  @override
  $Res call({CoordinateValue x, CoordinateValue y, FloorNumber floor});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(_Position _value, $Res Function(_Position) _then)
      : super(_value, (v) => _then(v as _Position));

  @override
  _Position get _value => super._value as _Position;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_Position(
      x: x == freezed ? _value.x : x as CoordinateValue,
      y: y == freezed ? _value.y : y as CoordinateValue,
      floor: floor == freezed ? _value.floor : floor as FloorNumber,
    ));
  }
}

/// @nodoc
class _$_Position implements _Position {
  const _$_Position({@required this.x, @required this.y, @required this.floor})
      : assert(x != null),
        assert(y != null),
        assert(floor != null);

  @override
  final CoordinateValue x;
  @override
  final CoordinateValue y;
  @override
  final FloorNumber floor;

  @override
  String toString() {
    return 'Position(x: $x, y: $y, floor: $floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Position &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(floor);

  @override
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position(
      {@required CoordinateValue x,
      @required CoordinateValue y,
      @required FloorNumber floor}) = _$_Position;

  @override
  CoordinateValue get x;
  @override
  CoordinateValue get y;
  @override
  FloorNumber get floor;
  @override
  _$PositionCopyWith<_Position> get copyWith;
}

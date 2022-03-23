// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'position_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PositionDto _$PositionDtoFromJson(Map<String, dynamic> json) {
  return _PositionDto.fromJson(json);
}

/// @nodoc
class _$PositionDtoTearOff {
  const _$PositionDtoTearOff();

// ignore: unused_element
  _PositionDto call(
      {@required double x, @required double y, @required int floor}) {
    return _PositionDto(
      x: x,
      y: y,
      floor: floor,
    );
  }

// ignore: unused_element
  PositionDto fromJson(Map<String, Object> json) {
    return PositionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PositionDto = _$PositionDtoTearOff();

/// @nodoc
mixin _$PositionDto {
  double get x;
  double get y;
  int get floor;

  Map<String, dynamic> toJson();
  $PositionDtoCopyWith<PositionDto> get copyWith;
}

/// @nodoc
abstract class $PositionDtoCopyWith<$Res> {
  factory $PositionDtoCopyWith(
          PositionDto value, $Res Function(PositionDto) then) =
      _$PositionDtoCopyWithImpl<$Res>;
  $Res call({double x, double y, int floor});
}

/// @nodoc
class _$PositionDtoCopyWithImpl<$Res> implements $PositionDtoCopyWith<$Res> {
  _$PositionDtoCopyWithImpl(this._value, this._then);

  final PositionDto _value;
  // ignore: unused_field
  final $Res Function(PositionDto) _then;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed ? _value.x : x as double,
      y: y == freezed ? _value.y : y as double,
      floor: floor == freezed ? _value.floor : floor as int,
    ));
  }
}

/// @nodoc
abstract class _$PositionDtoCopyWith<$Res>
    implements $PositionDtoCopyWith<$Res> {
  factory _$PositionDtoCopyWith(
          _PositionDto value, $Res Function(_PositionDto) then) =
      __$PositionDtoCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y, int floor});
}

/// @nodoc
class __$PositionDtoCopyWithImpl<$Res> extends _$PositionDtoCopyWithImpl<$Res>
    implements _$PositionDtoCopyWith<$Res> {
  __$PositionDtoCopyWithImpl(
      _PositionDto _value, $Res Function(_PositionDto) _then)
      : super(_value, (v) => _then(v as _PositionDto));

  @override
  _PositionDto get _value => super._value as _PositionDto;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_PositionDto(
      x: x == freezed ? _value.x : x as double,
      y: y == freezed ? _value.y : y as double,
      floor: floor == freezed ? _value.floor : floor as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PositionDto implements _PositionDto {
  _$_PositionDto({@required this.x, @required this.y, @required this.floor})
      : assert(x != null),
        assert(y != null),
        assert(floor != null);

  factory _$_PositionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PositionDtoFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final int floor;

  @override
  String toString() {
    return 'PositionDto(x: $x, y: $y, floor: $floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionDto &&
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
  _$PositionDtoCopyWith<_PositionDto> get copyWith =>
      __$PositionDtoCopyWithImpl<_PositionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PositionDtoToJson(this);
  }
}

abstract class _PositionDto implements PositionDto {
  factory _PositionDto(
      {@required double x,
      @required double y,
      @required int floor}) = _$_PositionDto;

  factory _PositionDto.fromJson(Map<String, dynamic> json) =
      _$_PositionDto.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  int get floor;
  @override
  _$PositionDtoCopyWith<_PositionDto> get copyWith;
}

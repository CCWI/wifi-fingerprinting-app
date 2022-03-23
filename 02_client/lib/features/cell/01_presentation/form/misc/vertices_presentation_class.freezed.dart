// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vertices_presentation_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VertexPrimitiveTearOff {
  const _$VertexPrimitiveTearOff();

// ignore: unused_element
  _VertexPrimitive call(
      {@required String x, @required String y, @required String floor}) {
    return _VertexPrimitive(
      x: x,
      y: y,
      floor: floor,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VertexPrimitive = _$VertexPrimitiveTearOff();

/// @nodoc
mixin _$VertexPrimitive {
  String get x;
  String get y;
  String get floor;

  $VertexPrimitiveCopyWith<VertexPrimitive> get copyWith;
}

/// @nodoc
abstract class $VertexPrimitiveCopyWith<$Res> {
  factory $VertexPrimitiveCopyWith(
          VertexPrimitive value, $Res Function(VertexPrimitive) then) =
      _$VertexPrimitiveCopyWithImpl<$Res>;
  $Res call({String x, String y, String floor});
}

/// @nodoc
class _$VertexPrimitiveCopyWithImpl<$Res>
    implements $VertexPrimitiveCopyWith<$Res> {
  _$VertexPrimitiveCopyWithImpl(this._value, this._then);

  final VertexPrimitive _value;
  // ignore: unused_field
  final $Res Function(VertexPrimitive) _then;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed ? _value.x : x as String,
      y: y == freezed ? _value.y : y as String,
      floor: floor == freezed ? _value.floor : floor as String,
    ));
  }
}

/// @nodoc
abstract class _$VertexPrimitiveCopyWith<$Res>
    implements $VertexPrimitiveCopyWith<$Res> {
  factory _$VertexPrimitiveCopyWith(
          _VertexPrimitive value, $Res Function(_VertexPrimitive) then) =
      __$VertexPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String x, String y, String floor});
}

/// @nodoc
class __$VertexPrimitiveCopyWithImpl<$Res>
    extends _$VertexPrimitiveCopyWithImpl<$Res>
    implements _$VertexPrimitiveCopyWith<$Res> {
  __$VertexPrimitiveCopyWithImpl(
      _VertexPrimitive _value, $Res Function(_VertexPrimitive) _then)
      : super(_value, (v) => _then(v as _VertexPrimitive));

  @override
  _VertexPrimitive get _value => super._value as _VertexPrimitive;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
    Object floor = freezed,
  }) {
    return _then(_VertexPrimitive(
      x: x == freezed ? _value.x : x as String,
      y: y == freezed ? _value.y : y as String,
      floor: floor == freezed ? _value.floor : floor as String,
    ));
  }
}

/// @nodoc
class _$_VertexPrimitive
    with DiagnosticableTreeMixin
    implements _VertexPrimitive {
  const _$_VertexPrimitive(
      {@required this.x, @required this.y, @required this.floor})
      : assert(x != null),
        assert(y != null),
        assert(floor != null);

  @override
  final String x;
  @override
  final String y;
  @override
  final String floor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VertexPrimitive(x: $x, y: $y, floor: $floor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VertexPrimitive'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('floor', floor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VertexPrimitive &&
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
  _$VertexPrimitiveCopyWith<_VertexPrimitive> get copyWith =>
      __$VertexPrimitiveCopyWithImpl<_VertexPrimitive>(this, _$identity);
}

abstract class _VertexPrimitive implements VertexPrimitive {
  const factory _VertexPrimitive(
      {@required String x,
      @required String y,
      @required String floor}) = _$_VertexPrimitive;

  @override
  String get x;
  @override
  String get y;
  @override
  String get floor;
  @override
  _$VertexPrimitiveCopyWith<_VertexPrimitive> get copyWith;
}

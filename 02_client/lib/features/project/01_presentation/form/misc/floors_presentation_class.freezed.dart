// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'floors_presentation_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FloorMapPrimitiveTearOff {
  const _$FloorMapPrimitiveTearOff();

// ignore: unused_element
  _FloorMapPrimitive call(
      {@required String imagePath,
      @required UniqueId id,
      @required String floor,
      @required String imageScale}) {
    return _FloorMapPrimitive(
      imagePath: imagePath,
      id: id,
      floor: floor,
      imageScale: imageScale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FloorMapPrimitive = _$FloorMapPrimitiveTearOff();

/// @nodoc
mixin _$FloorMapPrimitive {
  String get imagePath;
  UniqueId get id;
  String get floor;
  String get imageScale;

  $FloorMapPrimitiveCopyWith<FloorMapPrimitive> get copyWith;
}

/// @nodoc
abstract class $FloorMapPrimitiveCopyWith<$Res> {
  factory $FloorMapPrimitiveCopyWith(
          FloorMapPrimitive value, $Res Function(FloorMapPrimitive) then) =
      _$FloorMapPrimitiveCopyWithImpl<$Res>;
  $Res call({String imagePath, UniqueId id, String floor, String imageScale});
}

/// @nodoc
class _$FloorMapPrimitiveCopyWithImpl<$Res>
    implements $FloorMapPrimitiveCopyWith<$Res> {
  _$FloorMapPrimitiveCopyWithImpl(this._value, this._then);

  final FloorMapPrimitive _value;
  // ignore: unused_field
  final $Res Function(FloorMapPrimitive) _then;

  @override
  $Res call({
    Object imagePath = freezed,
    Object id = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      id: id == freezed ? _value.id : id as UniqueId,
      floor: floor == freezed ? _value.floor : floor as String,
      imageScale:
          imageScale == freezed ? _value.imageScale : imageScale as String,
    ));
  }
}

/// @nodoc
abstract class _$FloorMapPrimitiveCopyWith<$Res>
    implements $FloorMapPrimitiveCopyWith<$Res> {
  factory _$FloorMapPrimitiveCopyWith(
          _FloorMapPrimitive value, $Res Function(_FloorMapPrimitive) then) =
      __$FloorMapPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath, UniqueId id, String floor, String imageScale});
}

/// @nodoc
class __$FloorMapPrimitiveCopyWithImpl<$Res>
    extends _$FloorMapPrimitiveCopyWithImpl<$Res>
    implements _$FloorMapPrimitiveCopyWith<$Res> {
  __$FloorMapPrimitiveCopyWithImpl(
      _FloorMapPrimitive _value, $Res Function(_FloorMapPrimitive) _then)
      : super(_value, (v) => _then(v as _FloorMapPrimitive));

  @override
  _FloorMapPrimitive get _value => super._value as _FloorMapPrimitive;

  @override
  $Res call({
    Object imagePath = freezed,
    Object id = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_FloorMapPrimitive(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      id: id == freezed ? _value.id : id as UniqueId,
      floor: floor == freezed ? _value.floor : floor as String,
      imageScale:
          imageScale == freezed ? _value.imageScale : imageScale as String,
    ));
  }
}

/// @nodoc
class _$_FloorMapPrimitive
    with DiagnosticableTreeMixin
    implements _FloorMapPrimitive {
  const _$_FloorMapPrimitive(
      {@required this.imagePath,
      @required this.id,
      @required this.floor,
      @required this.imageScale})
      : assert(imagePath != null),
        assert(id != null),
        assert(floor != null),
        assert(imageScale != null);

  @override
  final String imagePath;
  @override
  final UniqueId id;
  @override
  final String floor;
  @override
  final String imageScale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FloorMapPrimitive(imagePath: $imagePath, id: $id, floor: $floor, imageScale: $imageScale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FloorMapPrimitive'))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('floor', floor))
      ..add(DiagnosticsProperty('imageScale', imageScale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorMapPrimitive &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.imageScale, imageScale) ||
                const DeepCollectionEquality()
                    .equals(other.imageScale, imageScale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(imageScale);

  @override
  _$FloorMapPrimitiveCopyWith<_FloorMapPrimitive> get copyWith =>
      __$FloorMapPrimitiveCopyWithImpl<_FloorMapPrimitive>(this, _$identity);
}

abstract class _FloorMapPrimitive implements FloorMapPrimitive {
  const factory _FloorMapPrimitive(
      {@required String imagePath,
      @required UniqueId id,
      @required String floor,
      @required String imageScale}) = _$_FloorMapPrimitive;

  @override
  String get imagePath;
  @override
  UniqueId get id;
  @override
  String get floor;
  @override
  String get imageScale;
  @override
  _$FloorMapPrimitiveCopyWith<_FloorMapPrimitive> get copyWith;
}

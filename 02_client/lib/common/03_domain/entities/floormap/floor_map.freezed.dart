// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'floor_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FloorMapTearOff {
  const _$FloorMapTearOff();

// ignore: unused_element
  _FloorMap call(
      {@required UniqueId id,
      @required Path imagePath,
      @required FloorNumber floor,
      @required Scale imageScale}) {
    return _FloorMap(
      id: id,
      imagePath: imagePath,
      floor: floor,
      imageScale: imageScale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FloorMap = _$FloorMapTearOff();

/// @nodoc
mixin _$FloorMap {
  UniqueId get id;
  Path get imagePath;
  FloorNumber get floor;
  Scale get imageScale;

  $FloorMapCopyWith<FloorMap> get copyWith;
}

/// @nodoc
abstract class $FloorMapCopyWith<$Res> {
  factory $FloorMapCopyWith(FloorMap value, $Res Function(FloorMap) then) =
      _$FloorMapCopyWithImpl<$Res>;
  $Res call({UniqueId id, Path imagePath, FloorNumber floor, Scale imageScale});
}

/// @nodoc
class _$FloorMapCopyWithImpl<$Res> implements $FloorMapCopyWith<$Res> {
  _$FloorMapCopyWithImpl(this._value, this._then);

  final FloorMap _value;
  // ignore: unused_field
  final $Res Function(FloorMap) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imagePath = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as Path,
      floor: floor == freezed ? _value.floor : floor as FloorNumber,
      imageScale:
          imageScale == freezed ? _value.imageScale : imageScale as Scale,
    ));
  }
}

/// @nodoc
abstract class _$FloorMapCopyWith<$Res> implements $FloorMapCopyWith<$Res> {
  factory _$FloorMapCopyWith(_FloorMap value, $Res Function(_FloorMap) then) =
      __$FloorMapCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Path imagePath, FloorNumber floor, Scale imageScale});
}

/// @nodoc
class __$FloorMapCopyWithImpl<$Res> extends _$FloorMapCopyWithImpl<$Res>
    implements _$FloorMapCopyWith<$Res> {
  __$FloorMapCopyWithImpl(_FloorMap _value, $Res Function(_FloorMap) _then)
      : super(_value, (v) => _then(v as _FloorMap));

  @override
  _FloorMap get _value => super._value as _FloorMap;

  @override
  $Res call({
    Object id = freezed,
    Object imagePath = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_FloorMap(
      id: id == freezed ? _value.id : id as UniqueId,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as Path,
      floor: floor == freezed ? _value.floor : floor as FloorNumber,
      imageScale:
          imageScale == freezed ? _value.imageScale : imageScale as Scale,
    ));
  }
}

/// @nodoc
class _$_FloorMap implements _FloorMap {
  const _$_FloorMap(
      {@required this.id,
      @required this.imagePath,
      @required this.floor,
      @required this.imageScale})
      : assert(id != null),
        assert(imagePath != null),
        assert(floor != null),
        assert(imageScale != null);

  @override
  final UniqueId id;
  @override
  final Path imagePath;
  @override
  final FloorNumber floor;
  @override
  final Scale imageScale;

  @override
  String toString() {
    return 'FloorMap(id: $id, imagePath: $imagePath, floor: $floor, imageScale: $imageScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorMap &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.imageScale, imageScale) ||
                const DeepCollectionEquality()
                    .equals(other.imageScale, imageScale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(imageScale);

  @override
  _$FloorMapCopyWith<_FloorMap> get copyWith =>
      __$FloorMapCopyWithImpl<_FloorMap>(this, _$identity);
}

abstract class _FloorMap implements FloorMap {
  const factory _FloorMap(
      {@required UniqueId id,
      @required Path imagePath,
      @required FloorNumber floor,
      @required Scale imageScale}) = _$_FloorMap;

  @override
  UniqueId get id;
  @override
  Path get imagePath;
  @override
  FloorNumber get floor;
  @override
  Scale get imageScale;
  @override
  _$FloorMapCopyWith<_FloorMap> get copyWith;
}

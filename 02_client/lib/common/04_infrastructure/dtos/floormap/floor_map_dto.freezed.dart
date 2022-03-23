// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'floor_map_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FloorMapDto _$FloorMapDtoFromJson(Map<String, dynamic> json) {
  return _FloorMapDto.fromJson(json);
}

/// @nodoc
class _$FloorMapDtoTearOff {
  const _$FloorMapDtoTearOff();

// ignore: unused_element
  _FloorMapDto call(
      {@required String id,
      @required String imagePath,
      @required int floor,
      @required int imageScale}) {
    return _FloorMapDto(
      id: id,
      imagePath: imagePath,
      floor: floor,
      imageScale: imageScale,
    );
  }

// ignore: unused_element
  FloorMapDto fromJson(Map<String, Object> json) {
    return FloorMapDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FloorMapDto = _$FloorMapDtoTearOff();

/// @nodoc
mixin _$FloorMapDto {
  String get id;
  String get imagePath;
  int get floor;
  int get imageScale;

  Map<String, dynamic> toJson();
  $FloorMapDtoCopyWith<FloorMapDto> get copyWith;
}

/// @nodoc
abstract class $FloorMapDtoCopyWith<$Res> {
  factory $FloorMapDtoCopyWith(
          FloorMapDto value, $Res Function(FloorMapDto) then) =
      _$FloorMapDtoCopyWithImpl<$Res>;
  $Res call({String id, String imagePath, int floor, int imageScale});
}

/// @nodoc
class _$FloorMapDtoCopyWithImpl<$Res> implements $FloorMapDtoCopyWith<$Res> {
  _$FloorMapDtoCopyWithImpl(this._value, this._then);

  final FloorMapDto _value;
  // ignore: unused_field
  final $Res Function(FloorMapDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imagePath = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      floor: floor == freezed ? _value.floor : floor as int,
      imageScale: imageScale == freezed ? _value.imageScale : imageScale as int,
    ));
  }
}

/// @nodoc
abstract class _$FloorMapDtoCopyWith<$Res>
    implements $FloorMapDtoCopyWith<$Res> {
  factory _$FloorMapDtoCopyWith(
          _FloorMapDto value, $Res Function(_FloorMapDto) then) =
      __$FloorMapDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String imagePath, int floor, int imageScale});
}

/// @nodoc
class __$FloorMapDtoCopyWithImpl<$Res> extends _$FloorMapDtoCopyWithImpl<$Res>
    implements _$FloorMapDtoCopyWith<$Res> {
  __$FloorMapDtoCopyWithImpl(
      _FloorMapDto _value, $Res Function(_FloorMapDto) _then)
      : super(_value, (v) => _then(v as _FloorMapDto));

  @override
  _FloorMapDto get _value => super._value as _FloorMapDto;

  @override
  $Res call({
    Object id = freezed,
    Object imagePath = freezed,
    Object floor = freezed,
    Object imageScale = freezed,
  }) {
    return _then(_FloorMapDto(
      id: id == freezed ? _value.id : id as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      floor: floor == freezed ? _value.floor : floor as int,
      imageScale: imageScale == freezed ? _value.imageScale : imageScale as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FloorMapDto implements _FloorMapDto {
  _$_FloorMapDto(
      {@required this.id,
      @required this.imagePath,
      @required this.floor,
      @required this.imageScale})
      : assert(id != null),
        assert(imagePath != null),
        assert(floor != null),
        assert(imageScale != null);

  factory _$_FloorMapDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FloorMapDtoFromJson(json);

  @override
  final String id;
  @override
  final String imagePath;
  @override
  final int floor;
  @override
  final int imageScale;

  @override
  String toString() {
    return 'FloorMapDto(id: $id, imagePath: $imagePath, floor: $floor, imageScale: $imageScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorMapDto &&
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
  _$FloorMapDtoCopyWith<_FloorMapDto> get copyWith =>
      __$FloorMapDtoCopyWithImpl<_FloorMapDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FloorMapDtoToJson(this);
  }
}

abstract class _FloorMapDto implements FloorMapDto {
  factory _FloorMapDto(
      {@required String id,
      @required String imagePath,
      @required int floor,
      @required int imageScale}) = _$_FloorMapDto;

  factory _FloorMapDto.fromJson(Map<String, dynamic> json) =
      _$_FloorMapDto.fromJson;

  @override
  String get id;
  @override
  String get imagePath;
  @override
  int get floor;
  @override
  int get imageScale;
  @override
  _$FloorMapDtoCopyWith<_FloorMapDto> get copyWith;
}

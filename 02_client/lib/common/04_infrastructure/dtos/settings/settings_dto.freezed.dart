// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingsDto _$SettingsDtoFromJson(Map<String, dynamic> json) {
  return _SettingsDto.fromJson(json);
}

/// @nodoc
class _$SettingsDtoTearOff {
  const _$SettingsDtoTearOff();

// ignore: unused_element
  _SettingsDto call(
      {@required int knnKValue, @required int locationAlgorithm}) {
    return _SettingsDto(
      knnKValue: knnKValue,
      locationAlgorithm: locationAlgorithm,
    );
  }

// ignore: unused_element
  SettingsDto fromJson(Map<String, Object> json) {
    return SettingsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsDto = _$SettingsDtoTearOff();

/// @nodoc
mixin _$SettingsDto {
  int get knnKValue;
  int get locationAlgorithm;

  Map<String, dynamic> toJson();
  $SettingsDtoCopyWith<SettingsDto> get copyWith;
}

/// @nodoc
abstract class $SettingsDtoCopyWith<$Res> {
  factory $SettingsDtoCopyWith(
          SettingsDto value, $Res Function(SettingsDto) then) =
      _$SettingsDtoCopyWithImpl<$Res>;
  $Res call({int knnKValue, int locationAlgorithm});
}

/// @nodoc
class _$SettingsDtoCopyWithImpl<$Res> implements $SettingsDtoCopyWith<$Res> {
  _$SettingsDtoCopyWithImpl(this._value, this._then);

  final SettingsDto _value;
  // ignore: unused_field
  final $Res Function(SettingsDto) _then;

  @override
  $Res call({
    Object knnKValue = freezed,
    Object locationAlgorithm = freezed,
  }) {
    return _then(_value.copyWith(
      knnKValue: knnKValue == freezed ? _value.knnKValue : knnKValue as int,
      locationAlgorithm: locationAlgorithm == freezed
          ? _value.locationAlgorithm
          : locationAlgorithm as int,
    ));
  }
}

/// @nodoc
abstract class _$SettingsDtoCopyWith<$Res>
    implements $SettingsDtoCopyWith<$Res> {
  factory _$SettingsDtoCopyWith(
          _SettingsDto value, $Res Function(_SettingsDto) then) =
      __$SettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call({int knnKValue, int locationAlgorithm});
}

/// @nodoc
class __$SettingsDtoCopyWithImpl<$Res> extends _$SettingsDtoCopyWithImpl<$Res>
    implements _$SettingsDtoCopyWith<$Res> {
  __$SettingsDtoCopyWithImpl(
      _SettingsDto _value, $Res Function(_SettingsDto) _then)
      : super(_value, (v) => _then(v as _SettingsDto));

  @override
  _SettingsDto get _value => super._value as _SettingsDto;

  @override
  $Res call({
    Object knnKValue = freezed,
    Object locationAlgorithm = freezed,
  }) {
    return _then(_SettingsDto(
      knnKValue: knnKValue == freezed ? _value.knnKValue : knnKValue as int,
      locationAlgorithm: locationAlgorithm == freezed
          ? _value.locationAlgorithm
          : locationAlgorithm as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingsDto implements _SettingsDto {
  _$_SettingsDto({@required this.knnKValue, @required this.locationAlgorithm})
      : assert(knnKValue != null),
        assert(locationAlgorithm != null);

  factory _$_SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsDtoFromJson(json);

  @override
  final int knnKValue;
  @override
  final int locationAlgorithm;

  @override
  String toString() {
    return 'SettingsDto(knnKValue: $knnKValue, locationAlgorithm: $locationAlgorithm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsDto &&
            (identical(other.knnKValue, knnKValue) ||
                const DeepCollectionEquality()
                    .equals(other.knnKValue, knnKValue)) &&
            (identical(other.locationAlgorithm, locationAlgorithm) ||
                const DeepCollectionEquality()
                    .equals(other.locationAlgorithm, locationAlgorithm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(knnKValue) ^
      const DeepCollectionEquality().hash(locationAlgorithm);

  @override
  _$SettingsDtoCopyWith<_SettingsDto> get copyWith =>
      __$SettingsDtoCopyWithImpl<_SettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsDtoToJson(this);
  }
}

abstract class _SettingsDto implements SettingsDto {
  factory _SettingsDto(
      {@required int knnKValue,
      @required int locationAlgorithm}) = _$_SettingsDto;

  factory _SettingsDto.fromJson(Map<String, dynamic> json) =
      _$_SettingsDto.fromJson;

  @override
  int get knnKValue;
  @override
  int get locationAlgorithm;
  @override
  _$SettingsDtoCopyWith<_SettingsDto> get copyWith;
}

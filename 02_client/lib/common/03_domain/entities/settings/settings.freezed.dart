// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

// ignore: unused_element
  _Settings call(
      {@required KnnKValue knnKValue, @required Algorithm locationAlgorithm}) {
    return _Settings(
      knnKValue: knnKValue,
      locationAlgorithm: locationAlgorithm,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  KnnKValue get knnKValue;
  Algorithm get locationAlgorithm;

  $SettingsCopyWith<Settings> get copyWith;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({KnnKValue knnKValue, Algorithm locationAlgorithm});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object knnKValue = freezed,
    Object locationAlgorithm = freezed,
  }) {
    return _then(_value.copyWith(
      knnKValue:
          knnKValue == freezed ? _value.knnKValue : knnKValue as KnnKValue,
      locationAlgorithm: locationAlgorithm == freezed
          ? _value.locationAlgorithm
          : locationAlgorithm as Algorithm,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({KnnKValue knnKValue, Algorithm locationAlgorithm});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object knnKValue = freezed,
    Object locationAlgorithm = freezed,
  }) {
    return _then(_Settings(
      knnKValue:
          knnKValue == freezed ? _value.knnKValue : knnKValue as KnnKValue,
      locationAlgorithm: locationAlgorithm == freezed
          ? _value.locationAlgorithm
          : locationAlgorithm as Algorithm,
    ));
  }
}

/// @nodoc
class _$_Settings implements _Settings {
  const _$_Settings(
      {@required this.knnKValue, @required this.locationAlgorithm})
      : assert(knnKValue != null),
        assert(locationAlgorithm != null);

  @override
  final KnnKValue knnKValue;
  @override
  final Algorithm locationAlgorithm;

  @override
  String toString() {
    return 'Settings(knnKValue: $knnKValue, locationAlgorithm: $locationAlgorithm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
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
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {@required KnnKValue knnKValue,
      @required Algorithm locationAlgorithm}) = _$_Settings;

  @override
  KnnKValue get knnKValue;
  @override
  Algorithm get locationAlgorithm;
  @override
  _$SettingsCopyWith<_Settings> get copyWith;
}

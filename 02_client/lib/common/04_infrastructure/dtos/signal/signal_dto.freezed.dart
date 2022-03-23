// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignalDto _$SignalDtoFromJson(Map<String, dynamic> json) {
  return _SignalDto.fromJson(json);
}

/// @nodoc
class _$SignalDtoTearOff {
  const _$SignalDtoTearOff();

// ignore: unused_element
  _SignalDto call(
      {@required String ssid,
      @required String bssid,
      @required double rss,
      @required int frequency}) {
    return _SignalDto(
      ssid: ssid,
      bssid: bssid,
      rss: rss,
      frequency: frequency,
    );
  }

// ignore: unused_element
  SignalDto fromJson(Map<String, Object> json) {
    return SignalDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignalDto = _$SignalDtoTearOff();

/// @nodoc
mixin _$SignalDto {
  String get ssid;
  String get bssid;
  double get rss;
  int get frequency;

  Map<String, dynamic> toJson();
  $SignalDtoCopyWith<SignalDto> get copyWith;
}

/// @nodoc
abstract class $SignalDtoCopyWith<$Res> {
  factory $SignalDtoCopyWith(SignalDto value, $Res Function(SignalDto) then) =
      _$SignalDtoCopyWithImpl<$Res>;
  $Res call({String ssid, String bssid, double rss, int frequency});
}

/// @nodoc
class _$SignalDtoCopyWithImpl<$Res> implements $SignalDtoCopyWith<$Res> {
  _$SignalDtoCopyWithImpl(this._value, this._then);

  final SignalDto _value;
  // ignore: unused_field
  final $Res Function(SignalDto) _then;

  @override
  $Res call({
    Object ssid = freezed,
    Object bssid = freezed,
    Object rss = freezed,
    Object frequency = freezed,
  }) {
    return _then(_value.copyWith(
      ssid: ssid == freezed ? _value.ssid : ssid as String,
      bssid: bssid == freezed ? _value.bssid : bssid as String,
      rss: rss == freezed ? _value.rss : rss as double,
      frequency: frequency == freezed ? _value.frequency : frequency as int,
    ));
  }
}

/// @nodoc
abstract class _$SignalDtoCopyWith<$Res> implements $SignalDtoCopyWith<$Res> {
  factory _$SignalDtoCopyWith(
          _SignalDto value, $Res Function(_SignalDto) then) =
      __$SignalDtoCopyWithImpl<$Res>;
  @override
  $Res call({String ssid, String bssid, double rss, int frequency});
}

/// @nodoc
class __$SignalDtoCopyWithImpl<$Res> extends _$SignalDtoCopyWithImpl<$Res>
    implements _$SignalDtoCopyWith<$Res> {
  __$SignalDtoCopyWithImpl(_SignalDto _value, $Res Function(_SignalDto) _then)
      : super(_value, (v) => _then(v as _SignalDto));

  @override
  _SignalDto get _value => super._value as _SignalDto;

  @override
  $Res call({
    Object ssid = freezed,
    Object bssid = freezed,
    Object rss = freezed,
    Object frequency = freezed,
  }) {
    return _then(_SignalDto(
      ssid: ssid == freezed ? _value.ssid : ssid as String,
      bssid: bssid == freezed ? _value.bssid : bssid as String,
      rss: rss == freezed ? _value.rss : rss as double,
      frequency: frequency == freezed ? _value.frequency : frequency as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignalDto implements _SignalDto {
  _$_SignalDto(
      {@required this.ssid,
      @required this.bssid,
      @required this.rss,
      @required this.frequency})
      : assert(ssid != null),
        assert(bssid != null),
        assert(rss != null),
        assert(frequency != null);

  factory _$_SignalDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SignalDtoFromJson(json);

  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final double rss;
  @override
  final int frequency;

  @override
  String toString() {
    return 'SignalDto(ssid: $ssid, bssid: $bssid, rss: $rss, frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignalDto &&
            (identical(other.ssid, ssid) ||
                const DeepCollectionEquality().equals(other.ssid, ssid)) &&
            (identical(other.bssid, bssid) ||
                const DeepCollectionEquality().equals(other.bssid, bssid)) &&
            (identical(other.rss, rss) ||
                const DeepCollectionEquality().equals(other.rss, rss)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ssid) ^
      const DeepCollectionEquality().hash(bssid) ^
      const DeepCollectionEquality().hash(rss) ^
      const DeepCollectionEquality().hash(frequency);

  @override
  _$SignalDtoCopyWith<_SignalDto> get copyWith =>
      __$SignalDtoCopyWithImpl<_SignalDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignalDtoToJson(this);
  }
}

abstract class _SignalDto implements SignalDto {
  factory _SignalDto(
      {@required String ssid,
      @required String bssid,
      @required double rss,
      @required int frequency}) = _$_SignalDto;

  factory _SignalDto.fromJson(Map<String, dynamic> json) =
      _$_SignalDto.fromJson;

  @override
  String get ssid;
  @override
  String get bssid;
  @override
  double get rss;
  @override
  int get frequency;
  @override
  _$SignalDtoCopyWith<_SignalDto> get copyWith;
}

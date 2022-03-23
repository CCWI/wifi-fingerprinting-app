// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignalTearOff {
  const _$SignalTearOff();

// ignore: unused_element
  _Signal call(
      {@required SSID ssid,
      @required BSSID bssid,
      @required RSS rss,
      @required Frequency frequency}) {
    return _Signal(
      ssid: ssid,
      bssid: bssid,
      rss: rss,
      frequency: frequency,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Signal = _$SignalTearOff();

/// @nodoc
mixin _$Signal {
  SSID get ssid;
  BSSID get bssid;
  RSS get rss;
  Frequency get frequency;

  $SignalCopyWith<Signal> get copyWith;
}

/// @nodoc
abstract class $SignalCopyWith<$Res> {
  factory $SignalCopyWith(Signal value, $Res Function(Signal) then) =
      _$SignalCopyWithImpl<$Res>;
  $Res call({SSID ssid, BSSID bssid, RSS rss, Frequency frequency});
}

/// @nodoc
class _$SignalCopyWithImpl<$Res> implements $SignalCopyWith<$Res> {
  _$SignalCopyWithImpl(this._value, this._then);

  final Signal _value;
  // ignore: unused_field
  final $Res Function(Signal) _then;

  @override
  $Res call({
    Object ssid = freezed,
    Object bssid = freezed,
    Object rss = freezed,
    Object frequency = freezed,
  }) {
    return _then(_value.copyWith(
      ssid: ssid == freezed ? _value.ssid : ssid as SSID,
      bssid: bssid == freezed ? _value.bssid : bssid as BSSID,
      rss: rss == freezed ? _value.rss : rss as RSS,
      frequency:
          frequency == freezed ? _value.frequency : frequency as Frequency,
    ));
  }
}

/// @nodoc
abstract class _$SignalCopyWith<$Res> implements $SignalCopyWith<$Res> {
  factory _$SignalCopyWith(_Signal value, $Res Function(_Signal) then) =
      __$SignalCopyWithImpl<$Res>;
  @override
  $Res call({SSID ssid, BSSID bssid, RSS rss, Frequency frequency});
}

/// @nodoc
class __$SignalCopyWithImpl<$Res> extends _$SignalCopyWithImpl<$Res>
    implements _$SignalCopyWith<$Res> {
  __$SignalCopyWithImpl(_Signal _value, $Res Function(_Signal) _then)
      : super(_value, (v) => _then(v as _Signal));

  @override
  _Signal get _value => super._value as _Signal;

  @override
  $Res call({
    Object ssid = freezed,
    Object bssid = freezed,
    Object rss = freezed,
    Object frequency = freezed,
  }) {
    return _then(_Signal(
      ssid: ssid == freezed ? _value.ssid : ssid as SSID,
      bssid: bssid == freezed ? _value.bssid : bssid as BSSID,
      rss: rss == freezed ? _value.rss : rss as RSS,
      frequency:
          frequency == freezed ? _value.frequency : frequency as Frequency,
    ));
  }
}

/// @nodoc
class _$_Signal implements _Signal {
  const _$_Signal(
      {@required this.ssid,
      @required this.bssid,
      @required this.rss,
      @required this.frequency})
      : assert(ssid != null),
        assert(bssid != null),
        assert(rss != null),
        assert(frequency != null);

  @override
  final SSID ssid;
  @override
  final BSSID bssid;
  @override
  final RSS rss;
  @override
  final Frequency frequency;

  @override
  String toString() {
    return 'Signal(ssid: $ssid, bssid: $bssid, rss: $rss, frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Signal &&
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
  _$SignalCopyWith<_Signal> get copyWith =>
      __$SignalCopyWithImpl<_Signal>(this, _$identity);
}

abstract class _Signal implements Signal {
  const factory _Signal(
      {@required SSID ssid,
      @required BSSID bssid,
      @required RSS rss,
      @required Frequency frequency}) = _$_Signal;

  @override
  SSID get ssid;
  @override
  BSSID get bssid;
  @override
  RSS get rss;
  @override
  Frequency get frequency;
  @override
  _$SignalCopyWith<_Signal> get copyWith;
}

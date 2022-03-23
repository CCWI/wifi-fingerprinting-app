// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calculate_position_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CalculatePositionRequestDto _$CalculatePositionRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _CalculatePositionRequestDto.fromJson(json);
}

/// @nodoc
class _$CalculatePositionRequestDtoTearOff {
  const _$CalculatePositionRequestDtoTearOff();

// ignore: unused_element
  _CalculatePositionRequestDto call(
      {@required String projectId,
      @required List<SignalDto> receivedSignals,
      @required SettingsDto settings}) {
    return _CalculatePositionRequestDto(
      projectId: projectId,
      receivedSignals: receivedSignals,
      settings: settings,
    );
  }

// ignore: unused_element
  CalculatePositionRequestDto fromJson(Map<String, Object> json) {
    return CalculatePositionRequestDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CalculatePositionRequestDto = _$CalculatePositionRequestDtoTearOff();

/// @nodoc
mixin _$CalculatePositionRequestDto {
  String get projectId;
  List<SignalDto> get receivedSignals;
  SettingsDto get settings;

  Map<String, dynamic> toJson();
  $CalculatePositionRequestDtoCopyWith<CalculatePositionRequestDto>
      get copyWith;
}

/// @nodoc
abstract class $CalculatePositionRequestDtoCopyWith<$Res> {
  factory $CalculatePositionRequestDtoCopyWith(
          CalculatePositionRequestDto value,
          $Res Function(CalculatePositionRequestDto) then) =
      _$CalculatePositionRequestDtoCopyWithImpl<$Res>;
  $Res call(
      {String projectId,
      List<SignalDto> receivedSignals,
      SettingsDto settings});

  $SettingsDtoCopyWith<$Res> get settings;
}

/// @nodoc
class _$CalculatePositionRequestDtoCopyWithImpl<$Res>
    implements $CalculatePositionRequestDtoCopyWith<$Res> {
  _$CalculatePositionRequestDtoCopyWithImpl(this._value, this._then);

  final CalculatePositionRequestDto _value;
  // ignore: unused_field
  final $Res Function(CalculatePositionRequestDto) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object receivedSignals = freezed,
    Object settings = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as List<SignalDto>,
      settings: settings == freezed ? _value.settings : settings as SettingsDto,
    ));
  }

  @override
  $SettingsDtoCopyWith<$Res> get settings {
    if (_value.settings == null) {
      return null;
    }
    return $SettingsDtoCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$CalculatePositionRequestDtoCopyWith<$Res>
    implements $CalculatePositionRequestDtoCopyWith<$Res> {
  factory _$CalculatePositionRequestDtoCopyWith(
          _CalculatePositionRequestDto value,
          $Res Function(_CalculatePositionRequestDto) then) =
      __$CalculatePositionRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String projectId,
      List<SignalDto> receivedSignals,
      SettingsDto settings});

  @override
  $SettingsDtoCopyWith<$Res> get settings;
}

/// @nodoc
class __$CalculatePositionRequestDtoCopyWithImpl<$Res>
    extends _$CalculatePositionRequestDtoCopyWithImpl<$Res>
    implements _$CalculatePositionRequestDtoCopyWith<$Res> {
  __$CalculatePositionRequestDtoCopyWithImpl(
      _CalculatePositionRequestDto _value,
      $Res Function(_CalculatePositionRequestDto) _then)
      : super(_value, (v) => _then(v as _CalculatePositionRequestDto));

  @override
  _CalculatePositionRequestDto get _value =>
      super._value as _CalculatePositionRequestDto;

  @override
  $Res call({
    Object projectId = freezed,
    Object receivedSignals = freezed,
    Object settings = freezed,
  }) {
    return _then(_CalculatePositionRequestDto(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as List<SignalDto>,
      settings: settings == freezed ? _value.settings : settings as SettingsDto,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CalculatePositionRequestDto implements _CalculatePositionRequestDto {
  _$_CalculatePositionRequestDto(
      {@required this.projectId,
      @required this.receivedSignals,
      @required this.settings})
      : assert(projectId != null),
        assert(receivedSignals != null),
        assert(settings != null);

  factory _$_CalculatePositionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CalculatePositionRequestDtoFromJson(json);

  @override
  final String projectId;
  @override
  final List<SignalDto> receivedSignals;
  @override
  final SettingsDto settings;

  @override
  String toString() {
    return 'CalculatePositionRequestDto(projectId: $projectId, receivedSignals: $receivedSignals, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculatePositionRequestDto &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.receivedSignals, receivedSignals) ||
                const DeepCollectionEquality()
                    .equals(other.receivedSignals, receivedSignals)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(receivedSignals) ^
      const DeepCollectionEquality().hash(settings);

  @override
  _$CalculatePositionRequestDtoCopyWith<_CalculatePositionRequestDto>
      get copyWith => __$CalculatePositionRequestDtoCopyWithImpl<
          _CalculatePositionRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CalculatePositionRequestDtoToJson(this);
  }
}

abstract class _CalculatePositionRequestDto
    implements CalculatePositionRequestDto {
  factory _CalculatePositionRequestDto(
      {@required String projectId,
      @required List<SignalDto> receivedSignals,
      @required SettingsDto settings}) = _$_CalculatePositionRequestDto;

  factory _CalculatePositionRequestDto.fromJson(Map<String, dynamic> json) =
      _$_CalculatePositionRequestDto.fromJson;

  @override
  String get projectId;
  @override
  List<SignalDto> get receivedSignals;
  @override
  SettingsDto get settings;
  @override
  _$CalculatePositionRequestDtoCopyWith<_CalculatePositionRequestDto>
      get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_calibration_fingerprint_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateCalibrationFingerprintRequestDto
    _$CreateCalibrationFingerprintRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _CreateCalibrationFingerprintRequestDto.fromJson(json);
}

/// @nodoc
class _$CreateCalibrationFingerprintRequestDtoTearOff {
  const _$CreateCalibrationFingerprintRequestDtoTearOff();

// ignore: unused_element
  _CreateCalibrationFingerprintRequestDto call(
      {@required String projectId,
      @required String calibrationPointId,
      @required List<SignalDto> receivedSignals}) {
    return _CreateCalibrationFingerprintRequestDto(
      projectId: projectId,
      calibrationPointId: calibrationPointId,
      receivedSignals: receivedSignals,
    );
  }

// ignore: unused_element
  CreateCalibrationFingerprintRequestDto fromJson(Map<String, Object> json) {
    return CreateCalibrationFingerprintRequestDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateCalibrationFingerprintRequestDto =
    _$CreateCalibrationFingerprintRequestDtoTearOff();

/// @nodoc
mixin _$CreateCalibrationFingerprintRequestDto {
  String get projectId;
  String get calibrationPointId;
  List<SignalDto> get receivedSignals;

  Map<String, dynamic> toJson();
  $CreateCalibrationFingerprintRequestDtoCopyWith<
      CreateCalibrationFingerprintRequestDto> get copyWith;
}

/// @nodoc
abstract class $CreateCalibrationFingerprintRequestDtoCopyWith<$Res> {
  factory $CreateCalibrationFingerprintRequestDtoCopyWith(
          CreateCalibrationFingerprintRequestDto value,
          $Res Function(CreateCalibrationFingerprintRequestDto) then) =
      _$CreateCalibrationFingerprintRequestDtoCopyWithImpl<$Res>;
  $Res call(
      {String projectId,
      String calibrationPointId,
      List<SignalDto> receivedSignals});
}

/// @nodoc
class _$CreateCalibrationFingerprintRequestDtoCopyWithImpl<$Res>
    implements $CreateCalibrationFingerprintRequestDtoCopyWith<$Res> {
  _$CreateCalibrationFingerprintRequestDtoCopyWithImpl(this._value, this._then);

  final CreateCalibrationFingerprintRequestDto _value;
  // ignore: unused_field
  final $Res Function(CreateCalibrationFingerprintRequestDto) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as List<SignalDto>,
    ));
  }
}

/// @nodoc
abstract class _$CreateCalibrationFingerprintRequestDtoCopyWith<$Res>
    implements $CreateCalibrationFingerprintRequestDtoCopyWith<$Res> {
  factory _$CreateCalibrationFingerprintRequestDtoCopyWith(
          _CreateCalibrationFingerprintRequestDto value,
          $Res Function(_CreateCalibrationFingerprintRequestDto) then) =
      __$CreateCalibrationFingerprintRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String projectId,
      String calibrationPointId,
      List<SignalDto> receivedSignals});
}

/// @nodoc
class __$CreateCalibrationFingerprintRequestDtoCopyWithImpl<$Res>
    extends _$CreateCalibrationFingerprintRequestDtoCopyWithImpl<$Res>
    implements _$CreateCalibrationFingerprintRequestDtoCopyWith<$Res> {
  __$CreateCalibrationFingerprintRequestDtoCopyWithImpl(
      _CreateCalibrationFingerprintRequestDto _value,
      $Res Function(_CreateCalibrationFingerprintRequestDto) _then)
      : super(
            _value, (v) => _then(v as _CreateCalibrationFingerprintRequestDto));

  @override
  _CreateCalibrationFingerprintRequestDto get _value =>
      super._value as _CreateCalibrationFingerprintRequestDto;

  @override
  $Res call({
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_CreateCalibrationFingerprintRequestDto(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as List<SignalDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CreateCalibrationFingerprintRequestDto
    implements _CreateCalibrationFingerprintRequestDto {
  const _$_CreateCalibrationFingerprintRequestDto(
      {@required this.projectId,
      @required this.calibrationPointId,
      @required this.receivedSignals})
      : assert(projectId != null),
        assert(calibrationPointId != null),
        assert(receivedSignals != null);

  factory _$_CreateCalibrationFingerprintRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$_$_CreateCalibrationFingerprintRequestDtoFromJson(json);

  @override
  final String projectId;
  @override
  final String calibrationPointId;
  @override
  final List<SignalDto> receivedSignals;

  @override
  String toString() {
    return 'CreateCalibrationFingerprintRequestDto(projectId: $projectId, calibrationPointId: $calibrationPointId, receivedSignals: $receivedSignals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCalibrationFingerprintRequestDto &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.calibrationPointId, calibrationPointId) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPointId, calibrationPointId)) &&
            (identical(other.receivedSignals, receivedSignals) ||
                const DeepCollectionEquality()
                    .equals(other.receivedSignals, receivedSignals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(calibrationPointId) ^
      const DeepCollectionEquality().hash(receivedSignals);

  @override
  _$CreateCalibrationFingerprintRequestDtoCopyWith<
          _CreateCalibrationFingerprintRequestDto>
      get copyWith => __$CreateCalibrationFingerprintRequestDtoCopyWithImpl<
          _CreateCalibrationFingerprintRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateCalibrationFingerprintRequestDtoToJson(this);
  }
}

abstract class _CreateCalibrationFingerprintRequestDto
    implements CreateCalibrationFingerprintRequestDto {
  const factory _CreateCalibrationFingerprintRequestDto(
          {@required String projectId,
          @required String calibrationPointId,
          @required List<SignalDto> receivedSignals}) =
      _$_CreateCalibrationFingerprintRequestDto;

  factory _CreateCalibrationFingerprintRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$_CreateCalibrationFingerprintRequestDto.fromJson;

  @override
  String get projectId;
  @override
  String get calibrationPointId;
  @override
  List<SignalDto> get receivedSignals;
  @override
  _$CreateCalibrationFingerprintRequestDtoCopyWith<
      _CreateCalibrationFingerprintRequestDto> get copyWith;
}

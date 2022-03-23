// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_fingerprint_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CalibrationFingerprintDto _$CalibrationFingerprintDtoFromJson(
    Map<String, dynamic> json) {
  return _CalibrationFingerprintDto.fromJson(json);
}

/// @nodoc
class _$CalibrationFingerprintDtoTearOff {
  const _$CalibrationFingerprintDtoTearOff();

// ignore: unused_element
  _CalibrationFingerprintDto call(
      {@required String id,
      @required String projectId,
      @required String calibrationPointId,
      @required DateTime timeOfCreation,
      @required Map<String, double> receivedSignals}) {
    return _CalibrationFingerprintDto(
      id: id,
      projectId: projectId,
      calibrationPointId: calibrationPointId,
      timeOfCreation: timeOfCreation,
      receivedSignals: receivedSignals,
    );
  }

// ignore: unused_element
  CalibrationFingerprintDto fromJson(Map<String, Object> json) {
    return CalibrationFingerprintDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationFingerprintDto = _$CalibrationFingerprintDtoTearOff();

/// @nodoc
mixin _$CalibrationFingerprintDto {
  String get id;
  String get projectId;
  String get calibrationPointId;
  DateTime get timeOfCreation;
  Map<String, double> get receivedSignals;

  Map<String, dynamic> toJson();
  $CalibrationFingerprintDtoCopyWith<CalibrationFingerprintDto> get copyWith;
}

/// @nodoc
abstract class $CalibrationFingerprintDtoCopyWith<$Res> {
  factory $CalibrationFingerprintDtoCopyWith(CalibrationFingerprintDto value,
          $Res Function(CalibrationFingerprintDto) then) =
      _$CalibrationFingerprintDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String projectId,
      String calibrationPointId,
      DateTime timeOfCreation,
      Map<String, double> receivedSignals});
}

/// @nodoc
class _$CalibrationFingerprintDtoCopyWithImpl<$Res>
    implements $CalibrationFingerprintDtoCopyWith<$Res> {
  _$CalibrationFingerprintDtoCopyWithImpl(this._value, this._then);

  final CalibrationFingerprintDto _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprintDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object timeOfCreation = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as Map<String, double>,
    ));
  }
}

/// @nodoc
abstract class _$CalibrationFingerprintDtoCopyWith<$Res>
    implements $CalibrationFingerprintDtoCopyWith<$Res> {
  factory _$CalibrationFingerprintDtoCopyWith(_CalibrationFingerprintDto value,
          $Res Function(_CalibrationFingerprintDto) then) =
      __$CalibrationFingerprintDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String projectId,
      String calibrationPointId,
      DateTime timeOfCreation,
      Map<String, double> receivedSignals});
}

/// @nodoc
class __$CalibrationFingerprintDtoCopyWithImpl<$Res>
    extends _$CalibrationFingerprintDtoCopyWithImpl<$Res>
    implements _$CalibrationFingerprintDtoCopyWith<$Res> {
  __$CalibrationFingerprintDtoCopyWithImpl(_CalibrationFingerprintDto _value,
      $Res Function(_CalibrationFingerprintDto) _then)
      : super(_value, (v) => _then(v as _CalibrationFingerprintDto));

  @override
  _CalibrationFingerprintDto get _value =>
      super._value as _CalibrationFingerprintDto;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object timeOfCreation = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_CalibrationFingerprintDto(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as String,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as Map<String, double>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CalibrationFingerprintDto implements _CalibrationFingerprintDto {
  const _$_CalibrationFingerprintDto(
      {@required this.id,
      @required this.projectId,
      @required this.calibrationPointId,
      @required this.timeOfCreation,
      @required this.receivedSignals})
      : assert(id != null),
        assert(projectId != null),
        assert(calibrationPointId != null),
        assert(timeOfCreation != null),
        assert(receivedSignals != null);

  factory _$_CalibrationFingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CalibrationFingerprintDtoFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String calibrationPointId;
  @override
  final DateTime timeOfCreation;
  @override
  final Map<String, double> receivedSignals;

  @override
  String toString() {
    return 'CalibrationFingerprintDto(id: $id, projectId: $projectId, calibrationPointId: $calibrationPointId, timeOfCreation: $timeOfCreation, receivedSignals: $receivedSignals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationFingerprintDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.calibrationPointId, calibrationPointId) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPointId, calibrationPointId)) &&
            (identical(other.timeOfCreation, timeOfCreation) ||
                const DeepCollectionEquality()
                    .equals(other.timeOfCreation, timeOfCreation)) &&
            (identical(other.receivedSignals, receivedSignals) ||
                const DeepCollectionEquality()
                    .equals(other.receivedSignals, receivedSignals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(calibrationPointId) ^
      const DeepCollectionEquality().hash(timeOfCreation) ^
      const DeepCollectionEquality().hash(receivedSignals);

  @override
  _$CalibrationFingerprintDtoCopyWith<_CalibrationFingerprintDto>
      get copyWith =>
          __$CalibrationFingerprintDtoCopyWithImpl<_CalibrationFingerprintDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CalibrationFingerprintDtoToJson(this);
  }
}

abstract class _CalibrationFingerprintDto implements CalibrationFingerprintDto {
  const factory _CalibrationFingerprintDto(
          {@required String id,
          @required String projectId,
          @required String calibrationPointId,
          @required DateTime timeOfCreation,
          @required Map<String, double> receivedSignals}) =
      _$_CalibrationFingerprintDto;

  factory _CalibrationFingerprintDto.fromJson(Map<String, dynamic> json) =
      _$_CalibrationFingerprintDto.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get calibrationPointId;
  @override
  DateTime get timeOfCreation;
  @override
  Map<String, double> get receivedSignals;
  @override
  _$CalibrationFingerprintDtoCopyWith<_CalibrationFingerprintDto> get copyWith;
}

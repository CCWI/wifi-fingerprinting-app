// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_calibration_fingerprint_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateCalibrationFingerprintRequestTearOff {
  const _$CreateCalibrationFingerprintRequestTearOff();

// ignore: unused_element
  _CreateCalibrationFingerprintRequest call(
      {@required UniqueId projectId,
      @required UniqueId calibrationPointId,
      @required KtList<Signal> receivedSignals}) {
    return _CreateCalibrationFingerprintRequest(
      projectId: projectId,
      calibrationPointId: calibrationPointId,
      receivedSignals: receivedSignals,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateCalibrationFingerprintRequest =
    _$CreateCalibrationFingerprintRequestTearOff();

/// @nodoc
mixin _$CreateCalibrationFingerprintRequest {
  UniqueId get projectId;
  UniqueId get calibrationPointId;
  KtList<Signal> get receivedSignals;

  $CreateCalibrationFingerprintRequestCopyWith<
      CreateCalibrationFingerprintRequest> get copyWith;
}

/// @nodoc
abstract class $CreateCalibrationFingerprintRequestCopyWith<$Res> {
  factory $CreateCalibrationFingerprintRequestCopyWith(
          CreateCalibrationFingerprintRequest value,
          $Res Function(CreateCalibrationFingerprintRequest) then) =
      _$CreateCalibrationFingerprintRequestCopyWithImpl<$Res>;
  $Res call(
      {UniqueId projectId,
      UniqueId calibrationPointId,
      KtList<Signal> receivedSignals});
}

/// @nodoc
class _$CreateCalibrationFingerprintRequestCopyWithImpl<$Res>
    implements $CreateCalibrationFingerprintRequestCopyWith<$Res> {
  _$CreateCalibrationFingerprintRequestCopyWithImpl(this._value, this._then);

  final CreateCalibrationFingerprintRequest _value;
  // ignore: unused_field
  final $Res Function(CreateCalibrationFingerprintRequest) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_value.copyWith(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtList<Signal>,
    ));
  }
}

/// @nodoc
abstract class _$CreateCalibrationFingerprintRequestCopyWith<$Res>
    implements $CreateCalibrationFingerprintRequestCopyWith<$Res> {
  factory _$CreateCalibrationFingerprintRequestCopyWith(
          _CreateCalibrationFingerprintRequest value,
          $Res Function(_CreateCalibrationFingerprintRequest) then) =
      __$CreateCalibrationFingerprintRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId projectId,
      UniqueId calibrationPointId,
      KtList<Signal> receivedSignals});
}

/// @nodoc
class __$CreateCalibrationFingerprintRequestCopyWithImpl<$Res>
    extends _$CreateCalibrationFingerprintRequestCopyWithImpl<$Res>
    implements _$CreateCalibrationFingerprintRequestCopyWith<$Res> {
  __$CreateCalibrationFingerprintRequestCopyWithImpl(
      _CreateCalibrationFingerprintRequest _value,
      $Res Function(_CreateCalibrationFingerprintRequest) _then)
      : super(_value, (v) => _then(v as _CreateCalibrationFingerprintRequest));

  @override
  _CreateCalibrationFingerprintRequest get _value =>
      super._value as _CreateCalibrationFingerprintRequest;

  @override
  $Res call({
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_CreateCalibrationFingerprintRequest(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtList<Signal>,
    ));
  }
}

/// @nodoc
class _$_CreateCalibrationFingerprintRequest
    implements _CreateCalibrationFingerprintRequest {
  const _$_CreateCalibrationFingerprintRequest(
      {@required this.projectId,
      @required this.calibrationPointId,
      @required this.receivedSignals})
      : assert(projectId != null),
        assert(calibrationPointId != null),
        assert(receivedSignals != null);

  @override
  final UniqueId projectId;
  @override
  final UniqueId calibrationPointId;
  @override
  final KtList<Signal> receivedSignals;

  @override
  String toString() {
    return 'CreateCalibrationFingerprintRequest(projectId: $projectId, calibrationPointId: $calibrationPointId, receivedSignals: $receivedSignals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCalibrationFingerprintRequest &&
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
  _$CreateCalibrationFingerprintRequestCopyWith<
          _CreateCalibrationFingerprintRequest>
      get copyWith => __$CreateCalibrationFingerprintRequestCopyWithImpl<
          _CreateCalibrationFingerprintRequest>(this, _$identity);
}

abstract class _CreateCalibrationFingerprintRequest
    implements CreateCalibrationFingerprintRequest {
  const factory _CreateCalibrationFingerprintRequest(
          {@required UniqueId projectId,
          @required UniqueId calibrationPointId,
          @required KtList<Signal> receivedSignals}) =
      _$_CreateCalibrationFingerprintRequest;

  @override
  UniqueId get projectId;
  @override
  UniqueId get calibrationPointId;
  @override
  KtList<Signal> get receivedSignals;
  @override
  _$CreateCalibrationFingerprintRequestCopyWith<
      _CreateCalibrationFingerprintRequest> get copyWith;
}

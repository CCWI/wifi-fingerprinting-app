// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_fingerprint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationFingerprintTearOff {
  const _$CalibrationFingerprintTearOff();

// ignore: unused_element
  _CalibrationFingerprint call(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required UniqueId calibrationPointId,
      @required DateTime timeOfCreation,
      @required KtMap<BSSID, RSS> receivedSignals}) {
    return _CalibrationFingerprint(
      id: id,
      projectId: projectId,
      calibrationPointId: calibrationPointId,
      timeOfCreation: timeOfCreation,
      receivedSignals: receivedSignals,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationFingerprint = _$CalibrationFingerprintTearOff();

/// @nodoc
mixin _$CalibrationFingerprint {
  UniqueId get id;
  UniqueId get projectId;
  UniqueId get calibrationPointId;
  DateTime get timeOfCreation;
  KtMap<BSSID, RSS> get receivedSignals;

  $CalibrationFingerprintCopyWith<CalibrationFingerprint> get copyWith;
}

/// @nodoc
abstract class $CalibrationFingerprintCopyWith<$Res> {
  factory $CalibrationFingerprintCopyWith(CalibrationFingerprint value,
          $Res Function(CalibrationFingerprint) then) =
      _$CalibrationFingerprintCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      UniqueId calibrationPointId,
      DateTime timeOfCreation,
      KtMap<BSSID, RSS> receivedSignals});
}

/// @nodoc
class _$CalibrationFingerprintCopyWithImpl<$Res>
    implements $CalibrationFingerprintCopyWith<$Res> {
  _$CalibrationFingerprintCopyWithImpl(this._value, this._then);

  final CalibrationFingerprint _value;
  // ignore: unused_field
  final $Res Function(CalibrationFingerprint) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object timeOfCreation = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtMap<BSSID, RSS>,
    ));
  }
}

/// @nodoc
abstract class _$CalibrationFingerprintCopyWith<$Res>
    implements $CalibrationFingerprintCopyWith<$Res> {
  factory _$CalibrationFingerprintCopyWith(_CalibrationFingerprint value,
          $Res Function(_CalibrationFingerprint) then) =
      __$CalibrationFingerprintCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      UniqueId calibrationPointId,
      DateTime timeOfCreation,
      KtMap<BSSID, RSS> receivedSignals});
}

/// @nodoc
class __$CalibrationFingerprintCopyWithImpl<$Res>
    extends _$CalibrationFingerprintCopyWithImpl<$Res>
    implements _$CalibrationFingerprintCopyWith<$Res> {
  __$CalibrationFingerprintCopyWithImpl(_CalibrationFingerprint _value,
      $Res Function(_CalibrationFingerprint) _then)
      : super(_value, (v) => _then(v as _CalibrationFingerprint));

  @override
  _CalibrationFingerprint get _value => super._value as _CalibrationFingerprint;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object calibrationPointId = freezed,
    Object timeOfCreation = freezed,
    Object receivedSignals = freezed,
  }) {
    return _then(_CalibrationFingerprint(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      calibrationPointId: calibrationPointId == freezed
          ? _value.calibrationPointId
          : calibrationPointId as UniqueId,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtMap<BSSID, RSS>,
    ));
  }
}

/// @nodoc
class _$_CalibrationFingerprint
    with DiagnosticableTreeMixin
    implements _CalibrationFingerprint {
  const _$_CalibrationFingerprint(
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

  @override
  final UniqueId id;
  @override
  final UniqueId projectId;
  @override
  final UniqueId calibrationPointId;
  @override
  final DateTime timeOfCreation;
  @override
  final KtMap<BSSID, RSS> receivedSignals;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationFingerprint(id: $id, projectId: $projectId, calibrationPointId: $calibrationPointId, timeOfCreation: $timeOfCreation, receivedSignals: $receivedSignals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalibrationFingerprint'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('projectId', projectId))
      ..add(DiagnosticsProperty('calibrationPointId', calibrationPointId))
      ..add(DiagnosticsProperty('timeOfCreation', timeOfCreation))
      ..add(DiagnosticsProperty('receivedSignals', receivedSignals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationFingerprint &&
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
  _$CalibrationFingerprintCopyWith<_CalibrationFingerprint> get copyWith =>
      __$CalibrationFingerprintCopyWithImpl<_CalibrationFingerprint>(
          this, _$identity);
}

abstract class _CalibrationFingerprint implements CalibrationFingerprint {
  const factory _CalibrationFingerprint(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required UniqueId calibrationPointId,
      @required DateTime timeOfCreation,
      @required KtMap<BSSID, RSS> receivedSignals}) = _$_CalibrationFingerprint;

  @override
  UniqueId get id;
  @override
  UniqueId get projectId;
  @override
  UniqueId get calibrationPointId;
  @override
  DateTime get timeOfCreation;
  @override
  KtMap<BSSID, RSS> get receivedSignals;
  @override
  _$CalibrationFingerprintCopyWith<_CalibrationFingerprint> get copyWith;
}

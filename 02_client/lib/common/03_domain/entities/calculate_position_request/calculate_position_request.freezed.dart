// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calculate_position_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalculatePositionRequestTearOff {
  const _$CalculatePositionRequestTearOff();

// ignore: unused_element
  _CalculatePositionRequest call(
      {@required UniqueId projectId,
      @required KtList<Signal> receivedSignals,
      @required Settings settings}) {
    return _CalculatePositionRequest(
      projectId: projectId,
      receivedSignals: receivedSignals,
      settings: settings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalculatePositionRequest = _$CalculatePositionRequestTearOff();

/// @nodoc
mixin _$CalculatePositionRequest {
  UniqueId get projectId;
  KtList<Signal> get receivedSignals;
  Settings get settings;

  $CalculatePositionRequestCopyWith<CalculatePositionRequest> get copyWith;
}

/// @nodoc
abstract class $CalculatePositionRequestCopyWith<$Res> {
  factory $CalculatePositionRequestCopyWith(CalculatePositionRequest value,
          $Res Function(CalculatePositionRequest) then) =
      _$CalculatePositionRequestCopyWithImpl<$Res>;
  $Res call(
      {UniqueId projectId, KtList<Signal> receivedSignals, Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$CalculatePositionRequestCopyWithImpl<$Res>
    implements $CalculatePositionRequestCopyWith<$Res> {
  _$CalculatePositionRequestCopyWithImpl(this._value, this._then);

  final CalculatePositionRequest _value;
  // ignore: unused_field
  final $Res Function(CalculatePositionRequest) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object receivedSignals = freezed,
    Object settings = freezed,
  }) {
    return _then(_value.copyWith(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtList<Signal>,
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    if (_value.settings == null) {
      return null;
    }
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$CalculatePositionRequestCopyWith<$Res>
    implements $CalculatePositionRequestCopyWith<$Res> {
  factory _$CalculatePositionRequestCopyWith(_CalculatePositionRequest value,
          $Res Function(_CalculatePositionRequest) then) =
      __$CalculatePositionRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId projectId, KtList<Signal> receivedSignals, Settings settings});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$CalculatePositionRequestCopyWithImpl<$Res>
    extends _$CalculatePositionRequestCopyWithImpl<$Res>
    implements _$CalculatePositionRequestCopyWith<$Res> {
  __$CalculatePositionRequestCopyWithImpl(_CalculatePositionRequest _value,
      $Res Function(_CalculatePositionRequest) _then)
      : super(_value, (v) => _then(v as _CalculatePositionRequest));

  @override
  _CalculatePositionRequest get _value =>
      super._value as _CalculatePositionRequest;

  @override
  $Res call({
    Object projectId = freezed,
    Object receivedSignals = freezed,
    Object settings = freezed,
  }) {
    return _then(_CalculatePositionRequest(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      receivedSignals: receivedSignals == freezed
          ? _value.receivedSignals
          : receivedSignals as KtList<Signal>,
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }
}

/// @nodoc
class _$_CalculatePositionRequest implements _CalculatePositionRequest {
  const _$_CalculatePositionRequest(
      {@required this.projectId,
      @required this.receivedSignals,
      @required this.settings})
      : assert(projectId != null),
        assert(receivedSignals != null),
        assert(settings != null);

  @override
  final UniqueId projectId;
  @override
  final KtList<Signal> receivedSignals;
  @override
  final Settings settings;

  @override
  String toString() {
    return 'CalculatePositionRequest(projectId: $projectId, receivedSignals: $receivedSignals, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculatePositionRequest &&
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
  _$CalculatePositionRequestCopyWith<_CalculatePositionRequest> get copyWith =>
      __$CalculatePositionRequestCopyWithImpl<_CalculatePositionRequest>(
          this, _$identity);
}

abstract class _CalculatePositionRequest implements CalculatePositionRequest {
  const factory _CalculatePositionRequest(
      {@required UniqueId projectId,
      @required KtList<Signal> receivedSignals,
      @required Settings settings}) = _$_CalculatePositionRequest;

  @override
  UniqueId get projectId;
  @override
  KtList<Signal> get receivedSignals;
  @override
  Settings get settings;
  @override
  _$CalculatePositionRequestCopyWith<_CalculatePositionRequest> get copyWith;
}

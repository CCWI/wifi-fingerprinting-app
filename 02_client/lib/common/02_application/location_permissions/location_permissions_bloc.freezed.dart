// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_permissions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationPermissionsEventTearOff {
  const _$LocationPermissionsEventTearOff();

// ignore: unused_element
  _LocationPermissionRequested locationPermissionRequested() {
    return const _LocationPermissionRequested();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationPermissionsEvent = _$LocationPermissionsEventTearOff();

/// @nodoc
mixin _$LocationPermissionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result locationPermissionRequested(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result locationPermissionRequested(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result locationPermissionRequested(_LocationPermissionRequested value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result locationPermissionRequested(_LocationPermissionRequested value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LocationPermissionsEventCopyWith<$Res> {
  factory $LocationPermissionsEventCopyWith(LocationPermissionsEvent value,
          $Res Function(LocationPermissionsEvent) then) =
      _$LocationPermissionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationPermissionsEventCopyWithImpl<$Res>
    implements $LocationPermissionsEventCopyWith<$Res> {
  _$LocationPermissionsEventCopyWithImpl(this._value, this._then);

  final LocationPermissionsEvent _value;
  // ignore: unused_field
  final $Res Function(LocationPermissionsEvent) _then;
}

/// @nodoc
abstract class _$LocationPermissionRequestedCopyWith<$Res> {
  factory _$LocationPermissionRequestedCopyWith(
          _LocationPermissionRequested value,
          $Res Function(_LocationPermissionRequested) then) =
      __$LocationPermissionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationPermissionRequestedCopyWithImpl<$Res>
    extends _$LocationPermissionsEventCopyWithImpl<$Res>
    implements _$LocationPermissionRequestedCopyWith<$Res> {
  __$LocationPermissionRequestedCopyWithImpl(
      _LocationPermissionRequested _value,
      $Res Function(_LocationPermissionRequested) _then)
      : super(_value, (v) => _then(v as _LocationPermissionRequested));

  @override
  _LocationPermissionRequested get _value =>
      super._value as _LocationPermissionRequested;
}

/// @nodoc
class _$_LocationPermissionRequested implements _LocationPermissionRequested {
  const _$_LocationPermissionRequested();

  @override
  String toString() {
    return 'LocationPermissionsEvent.locationPermissionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationPermissionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result locationPermissionRequested(),
  }) {
    assert(locationPermissionRequested != null);
    return locationPermissionRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result locationPermissionRequested(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationPermissionRequested != null) {
      return locationPermissionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result locationPermissionRequested(_LocationPermissionRequested value),
  }) {
    assert(locationPermissionRequested != null);
    return locationPermissionRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result locationPermissionRequested(_LocationPermissionRequested value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationPermissionRequested != null) {
      return locationPermissionRequested(this);
    }
    return orElse();
  }
}

abstract class _LocationPermissionRequested
    implements LocationPermissionsEvent {
  const factory _LocationPermissionRequested() = _$_LocationPermissionRequested;
}

/// @nodoc
class _$LocationPermissionsStateTearOff {
  const _$LocationPermissionsStateTearOff();

// ignore: unused_element
  Undetermined undertermined() {
    return const Undetermined();
  }

// ignore: unused_element
  PermissionsGranted permissionsGranted() {
    return const PermissionsGranted();
  }

// ignore: unused_element
  PermissionsDenied permissionsDenied() {
    return const PermissionsDenied();
  }

// ignore: unused_element
  UpdateFailed updateFailed(String message) {
    return UpdateFailed(
      message,
    );
  }

// ignore: unused_element
  WrongPlatform wrongPlatform() {
    return const WrongPlatform();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationPermissionsState = _$LocationPermissionsStateTearOff();

/// @nodoc
mixin _$LocationPermissionsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LocationPermissionsStateCopyWith<$Res> {
  factory $LocationPermissionsStateCopyWith(LocationPermissionsState value,
          $Res Function(LocationPermissionsState) then) =
      _$LocationPermissionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $LocationPermissionsStateCopyWith<$Res> {
  _$LocationPermissionsStateCopyWithImpl(this._value, this._then);

  final LocationPermissionsState _value;
  // ignore: unused_field
  final $Res Function(LocationPermissionsState) _then;
}

/// @nodoc
abstract class $UndeterminedCopyWith<$Res> {
  factory $UndeterminedCopyWith(
          Undetermined value, $Res Function(Undetermined) then) =
      _$UndeterminedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndeterminedCopyWithImpl<$Res>
    extends _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $UndeterminedCopyWith<$Res> {
  _$UndeterminedCopyWithImpl(
      Undetermined _value, $Res Function(Undetermined) _then)
      : super(_value, (v) => _then(v as Undetermined));

  @override
  Undetermined get _value => super._value as Undetermined;
}

/// @nodoc
class _$Undetermined implements Undetermined {
  const _$Undetermined();

  @override
  String toString() {
    return 'LocationPermissionsState.undertermined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Undetermined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return undertermined();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undertermined != null) {
      return undertermined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return undertermined(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undertermined != null) {
      return undertermined(this);
    }
    return orElse();
  }
}

abstract class Undetermined implements LocationPermissionsState {
  const factory Undetermined() = _$Undetermined;
}

/// @nodoc
abstract class $PermissionsGrantedCopyWith<$Res> {
  factory $PermissionsGrantedCopyWith(
          PermissionsGranted value, $Res Function(PermissionsGranted) then) =
      _$PermissionsGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionsGrantedCopyWithImpl<$Res>
    extends _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $PermissionsGrantedCopyWith<$Res> {
  _$PermissionsGrantedCopyWithImpl(
      PermissionsGranted _value, $Res Function(PermissionsGranted) _then)
      : super(_value, (v) => _then(v as PermissionsGranted));

  @override
  PermissionsGranted get _value => super._value as PermissionsGranted;
}

/// @nodoc
class _$PermissionsGranted implements PermissionsGranted {
  const _$PermissionsGranted();

  @override
  String toString() {
    return 'LocationPermissionsState.permissionsGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionsGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return permissionsGranted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsGranted != null) {
      return permissionsGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return permissionsGranted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsGranted != null) {
      return permissionsGranted(this);
    }
    return orElse();
  }
}

abstract class PermissionsGranted implements LocationPermissionsState {
  const factory PermissionsGranted() = _$PermissionsGranted;
}

/// @nodoc
abstract class $PermissionsDeniedCopyWith<$Res> {
  factory $PermissionsDeniedCopyWith(
          PermissionsDenied value, $Res Function(PermissionsDenied) then) =
      _$PermissionsDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionsDeniedCopyWithImpl<$Res>
    extends _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $PermissionsDeniedCopyWith<$Res> {
  _$PermissionsDeniedCopyWithImpl(
      PermissionsDenied _value, $Res Function(PermissionsDenied) _then)
      : super(_value, (v) => _then(v as PermissionsDenied));

  @override
  PermissionsDenied get _value => super._value as PermissionsDenied;
}

/// @nodoc
class _$PermissionsDenied implements PermissionsDenied {
  const _$PermissionsDenied();

  @override
  String toString() {
    return 'LocationPermissionsState.permissionsDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionsDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return permissionsDenied();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsDenied != null) {
      return permissionsDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return permissionsDenied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsDenied != null) {
      return permissionsDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionsDenied implements LocationPermissionsState {
  const factory PermissionsDenied() = _$PermissionsDenied;
}

/// @nodoc
abstract class $UpdateFailedCopyWith<$Res> {
  factory $UpdateFailedCopyWith(
          UpdateFailed value, $Res Function(UpdateFailed) then) =
      _$UpdateFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UpdateFailedCopyWithImpl<$Res>
    extends _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $UpdateFailedCopyWith<$Res> {
  _$UpdateFailedCopyWithImpl(
      UpdateFailed _value, $Res Function(UpdateFailed) _then)
      : super(_value, (v) => _then(v as UpdateFailed));

  @override
  UpdateFailed get _value => super._value as UpdateFailed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UpdateFailed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UpdateFailed implements UpdateFailed {
  const _$UpdateFailed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationPermissionsState.updateFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFailed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UpdateFailedCopyWith<UpdateFailed> get copyWith =>
      _$UpdateFailedCopyWithImpl<UpdateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return updateFailed(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailed != null) {
      return updateFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class UpdateFailed implements LocationPermissionsState {
  const factory UpdateFailed(String message) = _$UpdateFailed;

  String get message;
  $UpdateFailedCopyWith<UpdateFailed> get copyWith;
}

/// @nodoc
abstract class $WrongPlatformCopyWith<$Res> {
  factory $WrongPlatformCopyWith(
          WrongPlatform value, $Res Function(WrongPlatform) then) =
      _$WrongPlatformCopyWithImpl<$Res>;
}

/// @nodoc
class _$WrongPlatformCopyWithImpl<$Res>
    extends _$LocationPermissionsStateCopyWithImpl<$Res>
    implements $WrongPlatformCopyWith<$Res> {
  _$WrongPlatformCopyWithImpl(
      WrongPlatform _value, $Res Function(WrongPlatform) _then)
      : super(_value, (v) => _then(v as WrongPlatform));

  @override
  WrongPlatform get _value => super._value as WrongPlatform;
}

/// @nodoc
class _$WrongPlatform implements WrongPlatform {
  const _$WrongPlatform();

  @override
  String toString() {
    return 'LocationPermissionsState.wrongPlatform()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undertermined(),
    @required Result permissionsGranted(),
    @required Result permissionsDenied(),
    @required Result updateFailed(String message),
    @required Result wrongPlatform(),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return wrongPlatform();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undertermined(),
    Result permissionsGranted(),
    Result permissionsDenied(),
    Result updateFailed(String message),
    Result wrongPlatform(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPlatform != null) {
      return wrongPlatform();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undertermined(Undetermined value),
    @required Result permissionsGranted(PermissionsGranted value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result updateFailed(UpdateFailed value),
    @required Result wrongPlatform(WrongPlatform value),
  }) {
    assert(undertermined != null);
    assert(permissionsGranted != null);
    assert(permissionsDenied != null);
    assert(updateFailed != null);
    assert(wrongPlatform != null);
    return wrongPlatform(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undertermined(Undetermined value),
    Result permissionsGranted(PermissionsGranted value),
    Result permissionsDenied(PermissionsDenied value),
    Result updateFailed(UpdateFailed value),
    Result wrongPlatform(WrongPlatform value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPlatform != null) {
      return wrongPlatform(this);
    }
    return orElse();
  }
}

abstract class WrongPlatform implements LocationPermissionsState {
  const factory WrongPlatform() = _$WrongPlatform;
}

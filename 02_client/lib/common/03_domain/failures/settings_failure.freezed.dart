// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsFailureTearOff {
  const _$SettingsFailureTearOff();

// ignore: unused_element
  Unexpected unexpected() {
    return const Unexpected();
  }

// ignore: unused_element
  InsufficientPermissions unableToSafe() {
    return const InsufficientPermissions();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsFailure = _$SettingsFailureTearOff();

/// @nodoc
mixin _$SettingsFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToSafe(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToSafe(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToSafe(InsufficientPermissions value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToSafe(InsufficientPermissions value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsFailureCopyWith<$Res> {
  factory $SettingsFailureCopyWith(
          SettingsFailure value, $Res Function(SettingsFailure) then) =
      _$SettingsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsFailureCopyWithImpl<$Res>
    implements $SettingsFailureCopyWith<$Res> {
  _$SettingsFailureCopyWithImpl(this._value, this._then);

  final SettingsFailure _value;
  // ignore: unused_field
  final $Res Function(SettingsFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$SettingsFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'SettingsFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToSafe(),
  }) {
    assert(unexpected != null);
    assert(unableToSafe != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToSafe(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToSafe(InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(unableToSafe != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToSafe(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements SettingsFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $InsufficientPermissionsCopyWith<$Res> {
  factory $InsufficientPermissionsCopyWith(InsufficientPermissions value,
          $Res Function(InsufficientPermissions) then) =
      _$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$SettingsFailureCopyWithImpl<$Res>
    implements $InsufficientPermissionsCopyWith<$Res> {
  _$InsufficientPermissionsCopyWithImpl(InsufficientPermissions _value,
      $Res Function(InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as InsufficientPermissions));

  @override
  InsufficientPermissions get _value => super._value as InsufficientPermissions;
}

/// @nodoc
class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'SettingsFailure.unableToSafe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToSafe(),
  }) {
    assert(unexpected != null);
    assert(unableToSafe != null);
    return unableToSafe();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToSafe(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSafe != null) {
      return unableToSafe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToSafe(InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(unableToSafe != null);
    return unableToSafe(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToSafe(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSafe != null) {
      return unableToSafe(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements SettingsFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

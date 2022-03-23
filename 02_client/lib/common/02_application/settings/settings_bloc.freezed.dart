// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _Saved saved(Settings settings) {
    return _Saved(
      settings,
    );
  }

// ignore: unused_element
  _FingerprintsRecalculated fingerprintsRecalculated() {
    return const _FingerprintsRecalculated();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result saved(Settings settings),
    @required Result fingerprintsRecalculated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result saved(Settings settings),
    Result fingerprintsRecalculated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
    @required Result fingerprintsRecalculated(_FingerprintsRecalculated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    Result fingerprintsRecalculated(_FingerprintsRecalculated value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'SettingsEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result saved(Settings settings),
    @required Result fingerprintsRecalculated(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result saved(Settings settings),
    Result fingerprintsRecalculated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
    @required Result fingerprintsRecalculated(_FingerprintsRecalculated value),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    Result fingerprintsRecalculated(_FingerprintsRecalculated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SettingsEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object settings = freezed,
  }) {
    return _then(_Saved(
      settings == freezed ? _value.settings : settings as Settings,
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
class _$_Saved implements _Saved {
  const _$_Saved(this.settings) : assert(settings != null);

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsEvent.saved(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result saved(Settings settings),
    @required Result fingerprintsRecalculated(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return saved(settings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result saved(Settings settings),
    Result fingerprintsRecalculated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
    @required Result fingerprintsRecalculated(_FingerprintsRecalculated value),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    Result fingerprintsRecalculated(_FingerprintsRecalculated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements SettingsEvent {
  const factory _Saved(Settings settings) = _$_Saved;

  Settings get settings;
  _$SavedCopyWith<_Saved> get copyWith;
}

/// @nodoc
abstract class _$FingerprintsRecalculatedCopyWith<$Res> {
  factory _$FingerprintsRecalculatedCopyWith(_FingerprintsRecalculated value,
          $Res Function(_FingerprintsRecalculated) then) =
      __$FingerprintsRecalculatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FingerprintsRecalculatedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$FingerprintsRecalculatedCopyWith<$Res> {
  __$FingerprintsRecalculatedCopyWithImpl(_FingerprintsRecalculated _value,
      $Res Function(_FingerprintsRecalculated) _then)
      : super(_value, (v) => _then(v as _FingerprintsRecalculated));

  @override
  _FingerprintsRecalculated get _value =>
      super._value as _FingerprintsRecalculated;
}

/// @nodoc
class _$_FingerprintsRecalculated implements _FingerprintsRecalculated {
  const _$_FingerprintsRecalculated();

  @override
  String toString() {
    return 'SettingsEvent.fingerprintsRecalculated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FingerprintsRecalculated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result saved(Settings settings),
    @required Result fingerprintsRecalculated(),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return fingerprintsRecalculated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result saved(Settings settings),
    Result fingerprintsRecalculated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fingerprintsRecalculated != null) {
      return fingerprintsRecalculated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result saved(_Saved value),
    @required Result fingerprintsRecalculated(_FingerprintsRecalculated value),
  }) {
    assert(initialized != null);
    assert(saved != null);
    assert(fingerprintsRecalculated != null);
    return fingerprintsRecalculated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result saved(_Saved value),
    Result fingerprintsRecalculated(_FingerprintsRecalculated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fingerprintsRecalculated != null) {
      return fingerprintsRecalculated(this);
    }
    return orElse();
  }
}

abstract class _FingerprintsRecalculated implements SettingsEvent {
  const factory _FingerprintsRecalculated() = _$_FingerprintsRecalculated;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

// ignore: unused_element
  RecalculationLoadInProgress recalculationLoadInProgress() {
    return const RecalculationLoadInProgress();
  }

// ignore: unused_element
  SettingsLoadSuccess settingsLoadSuccess(Settings settings) {
    return SettingsLoadSuccess(
      settings,
    );
  }

// ignore: unused_element
  SettingsSaveSuccess settingsSaveSuccess(Settings savedSettings) {
    return SettingsSaveSuccess(
      savedSettings,
    );
  }

// ignore: unused_element
  RecalculationSuccess recalculationSaveSuccess(Settings settingsToDisplay) {
    return RecalculationSuccess(
      settingsToDisplay,
    );
  }

// ignore: unused_element
  LoadFailure settingsLoadFailure(SettingsFailure failure) {
    return LoadFailure(
      failure,
    );
  }

// ignore: unused_element
  SettingsSaveFailure settingsSaveFailure(SettingsFailure failure) {
    return SettingsSaveFailure(
      failure,
    );
  }

// ignore: unused_element
  RecalculationSaveFailure recalculationSaveFailure(
      FingerprintFailure failure) {
    return RecalculationSaveFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc
class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'SettingsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements SettingsState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $RecalculationLoadInProgressCopyWith<$Res> {
  factory $RecalculationLoadInProgressCopyWith(
          RecalculationLoadInProgress value,
          $Res Function(RecalculationLoadInProgress) then) =
      _$RecalculationLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecalculationLoadInProgressCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $RecalculationLoadInProgressCopyWith<$Res> {
  _$RecalculationLoadInProgressCopyWithImpl(RecalculationLoadInProgress _value,
      $Res Function(RecalculationLoadInProgress) _then)
      : super(_value, (v) => _then(v as RecalculationLoadInProgress));

  @override
  RecalculationLoadInProgress get _value =>
      super._value as RecalculationLoadInProgress;
}

/// @nodoc
class _$RecalculationLoadInProgress implements RecalculationLoadInProgress {
  const _$RecalculationLoadInProgress();

  @override
  String toString() {
    return 'SettingsState.recalculationLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecalculationLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationLoadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationLoadInProgress != null) {
      return recalculationLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationLoadInProgress != null) {
      return recalculationLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class RecalculationLoadInProgress implements SettingsState {
  const factory RecalculationLoadInProgress() = _$RecalculationLoadInProgress;
}

/// @nodoc
abstract class $SettingsLoadSuccessCopyWith<$Res> {
  factory $SettingsLoadSuccessCopyWith(
          SettingsLoadSuccess value, $Res Function(SettingsLoadSuccess) then) =
      _$SettingsLoadSuccessCopyWithImpl<$Res>;
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsLoadSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsLoadSuccessCopyWith<$Res> {
  _$SettingsLoadSuccessCopyWithImpl(
      SettingsLoadSuccess _value, $Res Function(SettingsLoadSuccess) _then)
      : super(_value, (v) => _then(v as SettingsLoadSuccess));

  @override
  SettingsLoadSuccess get _value => super._value as SettingsLoadSuccess;

  @override
  $Res call({
    Object settings = freezed,
  }) {
    return _then(SettingsLoadSuccess(
      settings == freezed ? _value.settings : settings as Settings,
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
class _$SettingsLoadSuccess implements SettingsLoadSuccess {
  const _$SettingsLoadSuccess(this.settings) : assert(settings != null);

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsState.settingsLoadSuccess(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsLoadSuccess &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @override
  $SettingsLoadSuccessCopyWith<SettingsLoadSuccess> get copyWith =>
      _$SettingsLoadSuccessCopyWithImpl<SettingsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsLoadSuccess(settings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLoadSuccess != null) {
      return settingsLoadSuccess(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLoadSuccess != null) {
      return settingsLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class SettingsLoadSuccess implements SettingsState {
  const factory SettingsLoadSuccess(Settings settings) = _$SettingsLoadSuccess;

  Settings get settings;
  $SettingsLoadSuccessCopyWith<SettingsLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $SettingsSaveSuccessCopyWith<$Res> {
  factory $SettingsSaveSuccessCopyWith(
          SettingsSaveSuccess value, $Res Function(SettingsSaveSuccess) then) =
      _$SettingsSaveSuccessCopyWithImpl<$Res>;
  $Res call({Settings savedSettings});

  $SettingsCopyWith<$Res> get savedSettings;
}

/// @nodoc
class _$SettingsSaveSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsSaveSuccessCopyWith<$Res> {
  _$SettingsSaveSuccessCopyWithImpl(
      SettingsSaveSuccess _value, $Res Function(SettingsSaveSuccess) _then)
      : super(_value, (v) => _then(v as SettingsSaveSuccess));

  @override
  SettingsSaveSuccess get _value => super._value as SettingsSaveSuccess;

  @override
  $Res call({
    Object savedSettings = freezed,
  }) {
    return _then(SettingsSaveSuccess(
      savedSettings == freezed
          ? _value.savedSettings
          : savedSettings as Settings,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get savedSettings {
    if (_value.savedSettings == null) {
      return null;
    }
    return $SettingsCopyWith<$Res>(_value.savedSettings, (value) {
      return _then(_value.copyWith(savedSettings: value));
    });
  }
}

/// @nodoc
class _$SettingsSaveSuccess implements SettingsSaveSuccess {
  const _$SettingsSaveSuccess(this.savedSettings)
      : assert(savedSettings != null);

  @override
  final Settings savedSettings;

  @override
  String toString() {
    return 'SettingsState.settingsSaveSuccess(savedSettings: $savedSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsSaveSuccess &&
            (identical(other.savedSettings, savedSettings) ||
                const DeepCollectionEquality()
                    .equals(other.savedSettings, savedSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savedSettings);

  @override
  $SettingsSaveSuccessCopyWith<SettingsSaveSuccess> get copyWith =>
      _$SettingsSaveSuccessCopyWithImpl<SettingsSaveSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsSaveSuccess(savedSettings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsSaveSuccess != null) {
      return settingsSaveSuccess(savedSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsSaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsSaveSuccess != null) {
      return settingsSaveSuccess(this);
    }
    return orElse();
  }
}

abstract class SettingsSaveSuccess implements SettingsState {
  const factory SettingsSaveSuccess(Settings savedSettings) =
      _$SettingsSaveSuccess;

  Settings get savedSettings;
  $SettingsSaveSuccessCopyWith<SettingsSaveSuccess> get copyWith;
}

/// @nodoc
abstract class $RecalculationSuccessCopyWith<$Res> {
  factory $RecalculationSuccessCopyWith(RecalculationSuccess value,
          $Res Function(RecalculationSuccess) then) =
      _$RecalculationSuccessCopyWithImpl<$Res>;
  $Res call({Settings settingsToDisplay});

  $SettingsCopyWith<$Res> get settingsToDisplay;
}

/// @nodoc
class _$RecalculationSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $RecalculationSuccessCopyWith<$Res> {
  _$RecalculationSuccessCopyWithImpl(
      RecalculationSuccess _value, $Res Function(RecalculationSuccess) _then)
      : super(_value, (v) => _then(v as RecalculationSuccess));

  @override
  RecalculationSuccess get _value => super._value as RecalculationSuccess;

  @override
  $Res call({
    Object settingsToDisplay = freezed,
  }) {
    return _then(RecalculationSuccess(
      settingsToDisplay == freezed
          ? _value.settingsToDisplay
          : settingsToDisplay as Settings,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settingsToDisplay {
    if (_value.settingsToDisplay == null) {
      return null;
    }
    return $SettingsCopyWith<$Res>(_value.settingsToDisplay, (value) {
      return _then(_value.copyWith(settingsToDisplay: value));
    });
  }
}

/// @nodoc
class _$RecalculationSuccess implements RecalculationSuccess {
  const _$RecalculationSuccess(this.settingsToDisplay)
      : assert(settingsToDisplay != null);

  @override
  final Settings settingsToDisplay;

  @override
  String toString() {
    return 'SettingsState.recalculationSaveSuccess(settingsToDisplay: $settingsToDisplay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecalculationSuccess &&
            (identical(other.settingsToDisplay, settingsToDisplay) ||
                const DeepCollectionEquality()
                    .equals(other.settingsToDisplay, settingsToDisplay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settingsToDisplay);

  @override
  $RecalculationSuccessCopyWith<RecalculationSuccess> get copyWith =>
      _$RecalculationSuccessCopyWithImpl<RecalculationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationSaveSuccess(settingsToDisplay);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationSaveSuccess != null) {
      return recalculationSaveSuccess(settingsToDisplay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationSaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationSaveSuccess != null) {
      return recalculationSaveSuccess(this);
    }
    return orElse();
  }
}

abstract class RecalculationSuccess implements SettingsState {
  const factory RecalculationSuccess(Settings settingsToDisplay) =
      _$RecalculationSuccess;

  Settings get settingsToDisplay;
  $RecalculationSuccessCopyWith<RecalculationSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({SettingsFailure failure});

  $SettingsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoadFailure(
      failure == freezed ? _value.failure : failure as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SettingsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final SettingsFailure failure;

  @override
  String toString() {
    return 'SettingsState.settingsLoadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsLoadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLoadFailure != null) {
      return settingsLoadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLoadFailure != null) {
      return settingsLoadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements SettingsState {
  const factory LoadFailure(SettingsFailure failure) = _$LoadFailure;

  SettingsFailure get failure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

/// @nodoc
abstract class $SettingsSaveFailureCopyWith<$Res> {
  factory $SettingsSaveFailureCopyWith(
          SettingsSaveFailure value, $Res Function(SettingsSaveFailure) then) =
      _$SettingsSaveFailureCopyWithImpl<$Res>;
  $Res call({SettingsFailure failure});

  $SettingsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SettingsSaveFailureCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsSaveFailureCopyWith<$Res> {
  _$SettingsSaveFailureCopyWithImpl(
      SettingsSaveFailure _value, $Res Function(SettingsSaveFailure) _then)
      : super(_value, (v) => _then(v as SettingsSaveFailure));

  @override
  SettingsSaveFailure get _value => super._value as SettingsSaveFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SettingsSaveFailure(
      failure == freezed ? _value.failure : failure as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SettingsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$SettingsSaveFailure implements SettingsSaveFailure {
  const _$SettingsSaveFailure(this.failure) : assert(failure != null);

  @override
  final SettingsFailure failure;

  @override
  String toString() {
    return 'SettingsState.settingsSaveFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsSaveFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SettingsSaveFailureCopyWith<SettingsSaveFailure> get copyWith =>
      _$SettingsSaveFailureCopyWithImpl<SettingsSaveFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsSaveFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsSaveFailure != null) {
      return settingsSaveFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return settingsSaveFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsSaveFailure != null) {
      return settingsSaveFailure(this);
    }
    return orElse();
  }
}

abstract class SettingsSaveFailure implements SettingsState {
  const factory SettingsSaveFailure(SettingsFailure failure) =
      _$SettingsSaveFailure;

  SettingsFailure get failure;
  $SettingsSaveFailureCopyWith<SettingsSaveFailure> get copyWith;
}

/// @nodoc
abstract class $RecalculationSaveFailureCopyWith<$Res> {
  factory $RecalculationSaveFailureCopyWith(RecalculationSaveFailure value,
          $Res Function(RecalculationSaveFailure) then) =
      _$RecalculationSaveFailureCopyWithImpl<$Res>;
  $Res call({FingerprintFailure failure});

  $FingerprintFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$RecalculationSaveFailureCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $RecalculationSaveFailureCopyWith<$Res> {
  _$RecalculationSaveFailureCopyWithImpl(RecalculationSaveFailure _value,
      $Res Function(RecalculationSaveFailure) _then)
      : super(_value, (v) => _then(v as RecalculationSaveFailure));

  @override
  RecalculationSaveFailure get _value =>
      super._value as RecalculationSaveFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(RecalculationSaveFailure(
      failure == freezed ? _value.failure : failure as FingerprintFailure,
    ));
  }

  @override
  $FingerprintFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FingerprintFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$RecalculationSaveFailure implements RecalculationSaveFailure {
  const _$RecalculationSaveFailure(this.failure) : assert(failure != null);

  @override
  final FingerprintFailure failure;

  @override
  String toString() {
    return 'SettingsState.recalculationSaveFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecalculationSaveFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $RecalculationSaveFailureCopyWith<RecalculationSaveFailure> get copyWith =>
      _$RecalculationSaveFailureCopyWithImpl<RecalculationSaveFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result recalculationLoadInProgress(),
    @required Result settingsLoadSuccess(Settings settings),
    @required Result settingsSaveSuccess(Settings savedSettings),
    @required Result recalculationSaveSuccess(Settings settingsToDisplay),
    @required Result settingsLoadFailure(SettingsFailure failure),
    @required Result settingsSaveFailure(SettingsFailure failure),
    @required Result recalculationSaveFailure(FingerprintFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationSaveFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result recalculationLoadInProgress(),
    Result settingsLoadSuccess(Settings settings),
    Result settingsSaveSuccess(Settings savedSettings),
    Result recalculationSaveSuccess(Settings settingsToDisplay),
    Result settingsLoadFailure(SettingsFailure failure),
    Result settingsSaveFailure(SettingsFailure failure),
    Result recalculationSaveFailure(FingerprintFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationSaveFailure != null) {
      return recalculationSaveFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required
        Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    @required Result settingsLoadSuccess(SettingsLoadSuccess value),
    @required Result settingsSaveSuccess(SettingsSaveSuccess value),
    @required Result recalculationSaveSuccess(RecalculationSuccess value),
    @required Result settingsLoadFailure(LoadFailure value),
    @required Result settingsSaveFailure(SettingsSaveFailure value),
    @required Result recalculationSaveFailure(RecalculationSaveFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(recalculationLoadInProgress != null);
    assert(settingsLoadSuccess != null);
    assert(settingsSaveSuccess != null);
    assert(recalculationSaveSuccess != null);
    assert(settingsLoadFailure != null);
    assert(settingsSaveFailure != null);
    assert(recalculationSaveFailure != null);
    return recalculationSaveFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result recalculationLoadInProgress(RecalculationLoadInProgress value),
    Result settingsLoadSuccess(SettingsLoadSuccess value),
    Result settingsSaveSuccess(SettingsSaveSuccess value),
    Result recalculationSaveSuccess(RecalculationSuccess value),
    Result settingsLoadFailure(LoadFailure value),
    Result settingsSaveFailure(SettingsSaveFailure value),
    Result recalculationSaveFailure(RecalculationSaveFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recalculationSaveFailure != null) {
      return recalculationSaveFailure(this);
    }
    return orElse();
  }
}

abstract class RecalculationSaveFailure implements SettingsState {
  const factory RecalculationSaveFailure(FingerprintFailure failure) =
      _$RecalculationSaveFailure;

  FingerprintFailure get failure;
  $RecalculationSaveFailureCopyWith<RecalculationSaveFailure> get copyWith;
}

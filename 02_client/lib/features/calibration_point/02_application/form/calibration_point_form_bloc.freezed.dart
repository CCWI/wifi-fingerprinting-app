// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calibration_point_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalibrationPointFormEventTearOff {
  const _$CalibrationPointFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(
      Option<CalibrationPoint> initialCalibrationPointOption,
      UniqueId projectId) {
    return _Initialized(
      initialCalibrationPointOption,
      projectId,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _XPosChanged xPosChanged(String xPosStr) {
    return _XPosChanged(
      xPosStr,
    );
  }

// ignore: unused_element
  _YPosChanged yPosChanged(String yPosStr) {
    return _YPosChanged(
      yPosStr,
    );
  }

// ignore: unused_element
  _FloorChanged floorChanged(String floorStr) {
    return _FloorChanged(
      floorStr,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }

// ignore: unused_element
  _Deleted deleted(UniqueId id) {
    return _Deleted(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPointFormEvent = _$CalibrationPointFormEventTearOff();

/// @nodoc
mixin _$CalibrationPointFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalibrationPointFormEventCopyWith<$Res> {
  factory $CalibrationPointFormEventCopyWith(CalibrationPointFormEvent value,
          $Res Function(CalibrationPointFormEvent) then) =
      _$CalibrationPointFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements $CalibrationPointFormEventCopyWith<$Res> {
  _$CalibrationPointFormEventCopyWithImpl(this._value, this._then);

  final CalibrationPointFormEvent _value;
  // ignore: unused_field
  final $Res Function(CalibrationPointFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {Option<CalibrationPoint> initialCalibrationPointOption,
      UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialCalibrationPointOption = freezed,
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      initialCalibrationPointOption == freezed
          ? _value.initialCalibrationPointOption
          : initialCalibrationPointOption as Option<CalibrationPoint>,
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialCalibrationPointOption, this.projectId)
      : assert(initialCalibrationPointOption != null),
        assert(projectId != null);

  @override
  final Option<CalibrationPoint> initialCalibrationPointOption;
  @override
  final UniqueId projectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.initialized(initialCalibrationPointOption: $initialCalibrationPointOption, projectId: $projectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalibrationPointFormEvent.initialized'))
      ..add(DiagnosticsProperty(
          'initialCalibrationPointOption', initialCalibrationPointOption))
      ..add(DiagnosticsProperty('projectId', projectId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialCalibrationPointOption,
                    initialCalibrationPointOption) ||
                const DeepCollectionEquality().equals(
                    other.initialCalibrationPointOption,
                    initialCalibrationPointOption)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialCalibrationPointOption) ^
      const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(initialCalibrationPointOption, projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialCalibrationPointOption, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CalibrationPointFormEvent {
  const factory _Initialized(
      Option<CalibrationPoint> initialCalibrationPointOption,
      UniqueId projectId) = _$_Initialized;

  Option<CalibrationPoint> get initialCalibrationPointOption;
  UniqueId get projectId;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalibrationPointFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('nameStr', nameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CalibrationPointFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$XPosChangedCopyWith<$Res> {
  factory _$XPosChangedCopyWith(
          _XPosChanged value, $Res Function(_XPosChanged) then) =
      __$XPosChangedCopyWithImpl<$Res>;
  $Res call({String xPosStr});
}

/// @nodoc
class __$XPosChangedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$XPosChangedCopyWith<$Res> {
  __$XPosChangedCopyWithImpl(
      _XPosChanged _value, $Res Function(_XPosChanged) _then)
      : super(_value, (v) => _then(v as _XPosChanged));

  @override
  _XPosChanged get _value => super._value as _XPosChanged;

  @override
  $Res call({
    Object xPosStr = freezed,
  }) {
    return _then(_XPosChanged(
      xPosStr == freezed ? _value.xPosStr : xPosStr as String,
    ));
  }
}

/// @nodoc
class _$_XPosChanged with DiagnosticableTreeMixin implements _XPosChanged {
  const _$_XPosChanged(this.xPosStr) : assert(xPosStr != null);

  @override
  final String xPosStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.xPosChanged(xPosStr: $xPosStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalibrationPointFormEvent.xPosChanged'))
      ..add(DiagnosticsProperty('xPosStr', xPosStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _XPosChanged &&
            (identical(other.xPosStr, xPosStr) ||
                const DeepCollectionEquality().equals(other.xPosStr, xPosStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(xPosStr);

  @override
  _$XPosChangedCopyWith<_XPosChanged> get copyWith =>
      __$XPosChangedCopyWithImpl<_XPosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return xPosChanged(xPosStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (xPosChanged != null) {
      return xPosChanged(xPosStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return xPosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (xPosChanged != null) {
      return xPosChanged(this);
    }
    return orElse();
  }
}

abstract class _XPosChanged implements CalibrationPointFormEvent {
  const factory _XPosChanged(String xPosStr) = _$_XPosChanged;

  String get xPosStr;
  _$XPosChangedCopyWith<_XPosChanged> get copyWith;
}

/// @nodoc
abstract class _$YPosChangedCopyWith<$Res> {
  factory _$YPosChangedCopyWith(
          _YPosChanged value, $Res Function(_YPosChanged) then) =
      __$YPosChangedCopyWithImpl<$Res>;
  $Res call({String yPosStr});
}

/// @nodoc
class __$YPosChangedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$YPosChangedCopyWith<$Res> {
  __$YPosChangedCopyWithImpl(
      _YPosChanged _value, $Res Function(_YPosChanged) _then)
      : super(_value, (v) => _then(v as _YPosChanged));

  @override
  _YPosChanged get _value => super._value as _YPosChanged;

  @override
  $Res call({
    Object yPosStr = freezed,
  }) {
    return _then(_YPosChanged(
      yPosStr == freezed ? _value.yPosStr : yPosStr as String,
    ));
  }
}

/// @nodoc
class _$_YPosChanged with DiagnosticableTreeMixin implements _YPosChanged {
  const _$_YPosChanged(this.yPosStr) : assert(yPosStr != null);

  @override
  final String yPosStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.yPosChanged(yPosStr: $yPosStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalibrationPointFormEvent.yPosChanged'))
      ..add(DiagnosticsProperty('yPosStr', yPosStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YPosChanged &&
            (identical(other.yPosStr, yPosStr) ||
                const DeepCollectionEquality().equals(other.yPosStr, yPosStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(yPosStr);

  @override
  _$YPosChangedCopyWith<_YPosChanged> get copyWith =>
      __$YPosChangedCopyWithImpl<_YPosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return yPosChanged(yPosStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yPosChanged != null) {
      return yPosChanged(yPosStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return yPosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yPosChanged != null) {
      return yPosChanged(this);
    }
    return orElse();
  }
}

abstract class _YPosChanged implements CalibrationPointFormEvent {
  const factory _YPosChanged(String yPosStr) = _$_YPosChanged;

  String get yPosStr;
  _$YPosChangedCopyWith<_YPosChanged> get copyWith;
}

/// @nodoc
abstract class _$FloorChangedCopyWith<$Res> {
  factory _$FloorChangedCopyWith(
          _FloorChanged value, $Res Function(_FloorChanged) then) =
      __$FloorChangedCopyWithImpl<$Res>;
  $Res call({String floorStr});
}

/// @nodoc
class __$FloorChangedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$FloorChangedCopyWith<$Res> {
  __$FloorChangedCopyWithImpl(
      _FloorChanged _value, $Res Function(_FloorChanged) _then)
      : super(_value, (v) => _then(v as _FloorChanged));

  @override
  _FloorChanged get _value => super._value as _FloorChanged;

  @override
  $Res call({
    Object floorStr = freezed,
  }) {
    return _then(_FloorChanged(
      floorStr == freezed ? _value.floorStr : floorStr as String,
    ));
  }
}

/// @nodoc
class _$_FloorChanged with DiagnosticableTreeMixin implements _FloorChanged {
  const _$_FloorChanged(this.floorStr) : assert(floorStr != null);

  @override
  final String floorStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.floorChanged(floorStr: $floorStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalibrationPointFormEvent.floorChanged'))
      ..add(DiagnosticsProperty('floorStr', floorStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorChanged &&
            (identical(other.floorStr, floorStr) ||
                const DeepCollectionEquality()
                    .equals(other.floorStr, floorStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(floorStr);

  @override
  _$FloorChangedCopyWith<_FloorChanged> get copyWith =>
      __$FloorChangedCopyWithImpl<_FloorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorChanged(floorStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorChanged != null) {
      return floorChanged(floorStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorChanged != null) {
      return floorChanged(this);
    }
    return orElse();
  }
}

abstract class _FloorChanged implements CalibrationPointFormEvent {
  const factory _FloorChanged(String floorStr) = _$_FloorChanged;

  String get floorStr;
  _$FloorChangedCopyWith<_FloorChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalibrationPointFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CalibrationPointFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$CalibrationPointFormEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_Deleted(
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Deleted with DiagnosticableTreeMixin implements _Deleted {
  const _$_Deleted(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormEvent.deleted(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalibrationPointFormEvent.deleted'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<CalibrationPoint> initialCalibrationPointOption,
            UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result xPosChanged(String xPosStr),
    @required Result yPosChanged(String yPosStr),
    @required Result floorChanged(String floorStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<CalibrationPoint> initialCalibrationPointOption,
        UniqueId projectId),
    Result nameChanged(String nameStr),
    Result xPosChanged(String xPosStr),
    Result yPosChanged(String yPosStr),
    Result floorChanged(String floorStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result xPosChanged(_XPosChanged value),
    @required Result yPosChanged(_YPosChanged value),
    @required Result floorChanged(_FloorChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(xPosChanged != null);
    assert(yPosChanged != null);
    assert(floorChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result xPosChanged(_XPosChanged value),
    Result yPosChanged(_YPosChanged value),
    Result floorChanged(_FloorChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CalibrationPointFormEvent {
  const factory _Deleted(UniqueId id) = _$_Deleted;

  UniqueId get id;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$CalibrationPointFormStateTearOff {
  const _$CalibrationPointFormStateTearOff();

// ignore: unused_element
  _CalibrationPointFormState call(
      {CalibrationPoint calibrationPoint,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isDeleting,
      @required
          bool isSaving,
      @required
          Option<Either<CalibrationPointFailure, Unit>>
              saveFailureOrSuccessOption,
      Option<Either<CalibrationPointFailure, Unit>>
          deleteFailureOrSuccessOption}) {
    return _CalibrationPointFormState(
      calibrationPoint: calibrationPoint,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isDeleting: isDeleting,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalibrationPointFormState = _$CalibrationPointFormStateTearOff();

/// @nodoc
mixin _$CalibrationPointFormState {
  CalibrationPoint get calibrationPoint;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isDeleting;
  bool get isSaving;
  Option<Either<CalibrationPointFailure, Unit>> get saveFailureOrSuccessOption;
  Option<Either<CalibrationPointFailure, Unit>>
      get deleteFailureOrSuccessOption;

  $CalibrationPointFormStateCopyWith<CalibrationPointFormState> get copyWith;
}

/// @nodoc
abstract class $CalibrationPointFormStateCopyWith<$Res> {
  factory $CalibrationPointFormStateCopyWith(CalibrationPointFormState value,
          $Res Function(CalibrationPointFormState) then) =
      _$CalibrationPointFormStateCopyWithImpl<$Res>;
  $Res call(
      {CalibrationPoint calibrationPoint,
      bool showErrorMessages,
      bool isEditing,
      bool isDeleting,
      bool isSaving,
      Option<Either<CalibrationPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<CalibrationPointFailure, Unit>>
          deleteFailureOrSuccessOption});

  $CalibrationPointCopyWith<$Res> get calibrationPoint;
}

/// @nodoc
class _$CalibrationPointFormStateCopyWithImpl<$Res>
    implements $CalibrationPointFormStateCopyWith<$Res> {
  _$CalibrationPointFormStateCopyWithImpl(this._value, this._then);

  final CalibrationPointFormState _value;
  // ignore: unused_field
  final $Res Function(CalibrationPointFormState) _then;

  @override
  $Res call({
    Object calibrationPoint = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isDeleting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      calibrationPoint: calibrationPoint == freezed
          ? _value.calibrationPoint
          : calibrationPoint as CalibrationPoint,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<CalibrationPointFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<CalibrationPointFailure, Unit>>,
    ));
  }

  @override
  $CalibrationPointCopyWith<$Res> get calibrationPoint {
    if (_value.calibrationPoint == null) {
      return null;
    }
    return $CalibrationPointCopyWith<$Res>(_value.calibrationPoint, (value) {
      return _then(_value.copyWith(calibrationPoint: value));
    });
  }
}

/// @nodoc
abstract class _$CalibrationPointFormStateCopyWith<$Res>
    implements $CalibrationPointFormStateCopyWith<$Res> {
  factory _$CalibrationPointFormStateCopyWith(_CalibrationPointFormState value,
          $Res Function(_CalibrationPointFormState) then) =
      __$CalibrationPointFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CalibrationPoint calibrationPoint,
      bool showErrorMessages,
      bool isEditing,
      bool isDeleting,
      bool isSaving,
      Option<Either<CalibrationPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<CalibrationPointFailure, Unit>>
          deleteFailureOrSuccessOption});

  @override
  $CalibrationPointCopyWith<$Res> get calibrationPoint;
}

/// @nodoc
class __$CalibrationPointFormStateCopyWithImpl<$Res>
    extends _$CalibrationPointFormStateCopyWithImpl<$Res>
    implements _$CalibrationPointFormStateCopyWith<$Res> {
  __$CalibrationPointFormStateCopyWithImpl(_CalibrationPointFormState _value,
      $Res Function(_CalibrationPointFormState) _then)
      : super(_value, (v) => _then(v as _CalibrationPointFormState));

  @override
  _CalibrationPointFormState get _value =>
      super._value as _CalibrationPointFormState;

  @override
  $Res call({
    Object calibrationPoint = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isDeleting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_CalibrationPointFormState(
      calibrationPoint: calibrationPoint == freezed
          ? _value.calibrationPoint
          : calibrationPoint as CalibrationPoint,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<CalibrationPointFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<CalibrationPointFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CalibrationPointFormState
    with DiagnosticableTreeMixin
    implements _CalibrationPointFormState {
  const _$_CalibrationPointFormState(
      {this.calibrationPoint,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isDeleting,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption,
      this.deleteFailureOrSuccessOption})
      : assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isDeleting != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final CalibrationPoint calibrationPoint;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isDeleting;
  @override
  final bool isSaving;
  @override
  final Option<Either<CalibrationPointFailure, Unit>>
      saveFailureOrSuccessOption;
  @override
  final Option<Either<CalibrationPointFailure, Unit>>
      deleteFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalibrationPointFormState(calibrationPoint: $calibrationPoint, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isDeleting: $isDeleting, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalibrationPointFormState'))
      ..add(DiagnosticsProperty('calibrationPoint', calibrationPoint))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isDeleting', isDeleting))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'deleteFailureOrSuccessOption', deleteFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalibrationPointFormState &&
            (identical(other.calibrationPoint, calibrationPoint) ||
                const DeepCollectionEquality()
                    .equals(other.calibrationPoint, calibrationPoint)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calibrationPoint) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption);

  @override
  _$CalibrationPointFormStateCopyWith<_CalibrationPointFormState>
      get copyWith =>
          __$CalibrationPointFormStateCopyWithImpl<_CalibrationPointFormState>(
              this, _$identity);
}

abstract class _CalibrationPointFormState implements CalibrationPointFormState {
  const factory _CalibrationPointFormState(
      {CalibrationPoint calibrationPoint,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isDeleting,
      @required
          bool isSaving,
      @required
          Option<Either<CalibrationPointFailure, Unit>>
              saveFailureOrSuccessOption,
      Option<Either<CalibrationPointFailure, Unit>>
          deleteFailureOrSuccessOption}) = _$_CalibrationPointFormState;

  @override
  CalibrationPoint get calibrationPoint;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isDeleting;
  @override
  bool get isSaving;
  @override
  Option<Either<CalibrationPointFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  Option<Either<CalibrationPointFailure, Unit>>
      get deleteFailureOrSuccessOption;
  @override
  _$CalibrationPointFormStateCopyWith<_CalibrationPointFormState> get copyWith;
}

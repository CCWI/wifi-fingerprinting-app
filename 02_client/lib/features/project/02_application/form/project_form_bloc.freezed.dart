// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectFormEventTearOff {
  const _$ProjectFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Project> initialProjectOption) {
    return _Initialized(
      initialProjectOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _FloorsChanged floorsChanged(KtList<FloorMapPrimitive> floors) {
    return _FloorsChanged(
      floors,
    );
  }

// ignore: unused_element
  _XLengthChanged xLengthChanged(String xLengthStr) {
    return _XLengthChanged(
      xLengthStr,
    );
  }

// ignore: unused_element
  _YLengthChanged yLengthChanged(String yLengthStr) {
    return _YLengthChanged(
      yLengthStr,
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
const $ProjectFormEvent = _$ProjectFormEventTearOff();

/// @nodoc
mixin _$ProjectFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectFormEventCopyWith<$Res> {
  factory $ProjectFormEventCopyWith(
          ProjectFormEvent value, $Res Function(ProjectFormEvent) then) =
      _$ProjectFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectFormEventCopyWithImpl<$Res>
    implements $ProjectFormEventCopyWith<$Res> {
  _$ProjectFormEventCopyWithImpl(this._value, this._then);

  final ProjectFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Project> initialProjectOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialProjectOption = freezed,
  }) {
    return _then(_Initialized(
      initialProjectOption == freezed
          ? _value.initialProjectOption
          : initialProjectOption as Option<Project>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialProjectOption)
      : assert(initialProjectOption != null);

  @override
  final Option<Project> initialProjectOption;

  @override
  String toString() {
    return 'ProjectFormEvent.initialized(initialProjectOption: $initialProjectOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialProjectOption, initialProjectOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialProjectOption, initialProjectOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialProjectOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(initialProjectOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialProjectOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
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

abstract class _Initialized implements ProjectFormEvent {
  const factory _Initialized(Option<Project> initialProjectOption) =
      _$_Initialized;

  Option<Project> get initialProjectOption;
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
    extends _$ProjectFormEventCopyWithImpl<$Res>
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
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProjectFormEvent.nameChanged(nameStr: $nameStr)';
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
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
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
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
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

abstract class _NameChanged implements ProjectFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$FloorsChangedCopyWith<$Res> {
  factory _$FloorsChangedCopyWith(
          _FloorsChanged value, $Res Function(_FloorsChanged) then) =
      __$FloorsChangedCopyWithImpl<$Res>;
  $Res call({KtList<FloorMapPrimitive> floors});
}

/// @nodoc
class __$FloorsChangedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$FloorsChangedCopyWith<$Res> {
  __$FloorsChangedCopyWithImpl(
      _FloorsChanged _value, $Res Function(_FloorsChanged) _then)
      : super(_value, (v) => _then(v as _FloorsChanged));

  @override
  _FloorsChanged get _value => super._value as _FloorsChanged;

  @override
  $Res call({
    Object floors = freezed,
  }) {
    return _then(_FloorsChanged(
      floors == freezed ? _value.floors : floors as KtList<FloorMapPrimitive>,
    ));
  }
}

/// @nodoc
class _$_FloorsChanged implements _FloorsChanged {
  const _$_FloorsChanged(this.floors) : assert(floors != null);

  @override
  final KtList<FloorMapPrimitive> floors;

  @override
  String toString() {
    return 'ProjectFormEvent.floorsChanged(floors: $floors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorsChanged &&
            (identical(other.floors, floors) ||
                const DeepCollectionEquality().equals(other.floors, floors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(floors);

  @override
  _$FloorsChangedCopyWith<_FloorsChanged> get copyWith =>
      __$FloorsChangedCopyWithImpl<_FloorsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorsChanged(floors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorsChanged != null) {
      return floorsChanged(floors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return floorsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorsChanged != null) {
      return floorsChanged(this);
    }
    return orElse();
  }
}

abstract class _FloorsChanged implements ProjectFormEvent {
  const factory _FloorsChanged(KtList<FloorMapPrimitive> floors) =
      _$_FloorsChanged;

  KtList<FloorMapPrimitive> get floors;
  _$FloorsChangedCopyWith<_FloorsChanged> get copyWith;
}

/// @nodoc
abstract class _$XLengthChangedCopyWith<$Res> {
  factory _$XLengthChangedCopyWith(
          _XLengthChanged value, $Res Function(_XLengthChanged) then) =
      __$XLengthChangedCopyWithImpl<$Res>;
  $Res call({String xLengthStr});
}

/// @nodoc
class __$XLengthChangedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$XLengthChangedCopyWith<$Res> {
  __$XLengthChangedCopyWithImpl(
      _XLengthChanged _value, $Res Function(_XLengthChanged) _then)
      : super(_value, (v) => _then(v as _XLengthChanged));

  @override
  _XLengthChanged get _value => super._value as _XLengthChanged;

  @override
  $Res call({
    Object xLengthStr = freezed,
  }) {
    return _then(_XLengthChanged(
      xLengthStr == freezed ? _value.xLengthStr : xLengthStr as String,
    ));
  }
}

/// @nodoc
class _$_XLengthChanged implements _XLengthChanged {
  const _$_XLengthChanged(this.xLengthStr) : assert(xLengthStr != null);

  @override
  final String xLengthStr;

  @override
  String toString() {
    return 'ProjectFormEvent.xLengthChanged(xLengthStr: $xLengthStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _XLengthChanged &&
            (identical(other.xLengthStr, xLengthStr) ||
                const DeepCollectionEquality()
                    .equals(other.xLengthStr, xLengthStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(xLengthStr);

  @override
  _$XLengthChangedCopyWith<_XLengthChanged> get copyWith =>
      __$XLengthChangedCopyWithImpl<_XLengthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return xLengthChanged(xLengthStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (xLengthChanged != null) {
      return xLengthChanged(xLengthStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return xLengthChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (xLengthChanged != null) {
      return xLengthChanged(this);
    }
    return orElse();
  }
}

abstract class _XLengthChanged implements ProjectFormEvent {
  const factory _XLengthChanged(String xLengthStr) = _$_XLengthChanged;

  String get xLengthStr;
  _$XLengthChangedCopyWith<_XLengthChanged> get copyWith;
}

/// @nodoc
abstract class _$YLengthChangedCopyWith<$Res> {
  factory _$YLengthChangedCopyWith(
          _YLengthChanged value, $Res Function(_YLengthChanged) then) =
      __$YLengthChangedCopyWithImpl<$Res>;
  $Res call({String yLengthStr});
}

/// @nodoc
class __$YLengthChangedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$YLengthChangedCopyWith<$Res> {
  __$YLengthChangedCopyWithImpl(
      _YLengthChanged _value, $Res Function(_YLengthChanged) _then)
      : super(_value, (v) => _then(v as _YLengthChanged));

  @override
  _YLengthChanged get _value => super._value as _YLengthChanged;

  @override
  $Res call({
    Object yLengthStr = freezed,
  }) {
    return _then(_YLengthChanged(
      yLengthStr == freezed ? _value.yLengthStr : yLengthStr as String,
    ));
  }
}

/// @nodoc
class _$_YLengthChanged implements _YLengthChanged {
  const _$_YLengthChanged(this.yLengthStr) : assert(yLengthStr != null);

  @override
  final String yLengthStr;

  @override
  String toString() {
    return 'ProjectFormEvent.yLengthChanged(yLengthStr: $yLengthStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YLengthChanged &&
            (identical(other.yLengthStr, yLengthStr) ||
                const DeepCollectionEquality()
                    .equals(other.yLengthStr, yLengthStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(yLengthStr);

  @override
  _$YLengthChangedCopyWith<_YLengthChanged> get copyWith =>
      __$YLengthChangedCopyWithImpl<_YLengthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return yLengthChanged(yLengthStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yLengthChanged != null) {
      return yLengthChanged(yLengthStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return yLengthChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yLengthChanged != null) {
      return yLengthChanged(this);
    }
    return orElse();
  }
}

abstract class _YLengthChanged implements ProjectFormEvent {
  const factory _YLengthChanged(String yLengthStr) = _$_YLengthChanged;

  String get yLengthStr;
  _$YLengthChangedCopyWith<_YLengthChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProjectFormEvent.saved()';
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
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
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
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
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

abstract class _Saved implements ProjectFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$ProjectFormEventCopyWithImpl<$Res>
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
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'ProjectFormEvent.deleted(id: $id)';
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
    @required Result initialized(Option<Project> initialProjectOption),
    @required Result nameChanged(String nameStr),
    @required Result floorsChanged(KtList<FloorMapPrimitive> floors),
    @required Result xLengthChanged(String xLengthStr),
    @required Result yLengthChanged(String yLengthStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Project> initialProjectOption),
    Result nameChanged(String nameStr),
    Result floorsChanged(KtList<FloorMapPrimitive> floors),
    Result xLengthChanged(String xLengthStr),
    Result yLengthChanged(String yLengthStr),
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
    @required Result floorsChanged(_FloorsChanged value),
    @required Result xLengthChanged(_XLengthChanged value),
    @required Result yLengthChanged(_YLengthChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(floorsChanged != null);
    assert(xLengthChanged != null);
    assert(yLengthChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result floorsChanged(_FloorsChanged value),
    Result xLengthChanged(_XLengthChanged value),
    Result yLengthChanged(_YLengthChanged value),
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

abstract class _Deleted implements ProjectFormEvent {
  const factory _Deleted(UniqueId id) = _$_Deleted;

  UniqueId get id;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$ProjectFormStateTearOff {
  const _$ProjectFormStateTearOff();

// ignore: unused_element
  _ProjectFormState call(
      {@required
          Project project,
      @required
          bool showErrorMessages,
      @required
          bool isInitial,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isDeleting,
      @required
          Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption,
      @required
          Option<Either<ProjectFailure, Unit>> deleteFailureOrSuccessOption}) {
    return _ProjectFormState(
      project: project,
      showErrorMessages: showErrorMessages,
      isInitial: isInitial,
      isEditing: isEditing,
      isSaving: isSaving,
      isDeleting: isDeleting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectFormState = _$ProjectFormStateTearOff();

/// @nodoc
mixin _$ProjectFormState {
  Project get project;
  bool get showErrorMessages;
  bool get isInitial;
  bool get isEditing;
  bool get isSaving;
  bool get isDeleting;
  Option<Either<ProjectFailure, Unit>> get saveFailureOrSuccessOption;
  Option<Either<ProjectFailure, Unit>> get deleteFailureOrSuccessOption;

  $ProjectFormStateCopyWith<ProjectFormState> get copyWith;
}

/// @nodoc
abstract class $ProjectFormStateCopyWith<$Res> {
  factory $ProjectFormStateCopyWith(
          ProjectFormState value, $Res Function(ProjectFormState) then) =
      _$ProjectFormStateCopyWithImpl<$Res>;
  $Res call(
      {Project project,
      bool showErrorMessages,
      bool isInitial,
      bool isEditing,
      bool isSaving,
      bool isDeleting,
      Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<ProjectFailure, Unit>> deleteFailureOrSuccessOption});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$ProjectFormStateCopyWithImpl<$Res>
    implements $ProjectFormStateCopyWith<$Res> {
  _$ProjectFormStateCopyWithImpl(this._value, this._then);

  final ProjectFormState _value;
  // ignore: unused_field
  final $Res Function(ProjectFormState) _then;

  @override
  $Res call({
    Object project = freezed,
    Object showErrorMessages = freezed,
    Object isInitial = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      project: project == freezed ? _value.project : project as Project,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProjectFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    if (_value.project == null) {
      return null;
    }
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc
abstract class _$ProjectFormStateCopyWith<$Res>
    implements $ProjectFormStateCopyWith<$Res> {
  factory _$ProjectFormStateCopyWith(
          _ProjectFormState value, $Res Function(_ProjectFormState) then) =
      __$ProjectFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Project project,
      bool showErrorMessages,
      bool isInitial,
      bool isEditing,
      bool isSaving,
      bool isDeleting,
      Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<ProjectFailure, Unit>> deleteFailureOrSuccessOption});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$ProjectFormStateCopyWithImpl<$Res>
    extends _$ProjectFormStateCopyWithImpl<$Res>
    implements _$ProjectFormStateCopyWith<$Res> {
  __$ProjectFormStateCopyWithImpl(
      _ProjectFormState _value, $Res Function(_ProjectFormState) _then)
      : super(_value, (v) => _then(v as _ProjectFormState));

  @override
  _ProjectFormState get _value => super._value as _ProjectFormState;

  @override
  $Res call({
    Object project = freezed,
    Object showErrorMessages = freezed,
    Object isInitial = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProjectFormState(
      project: project == freezed ? _value.project : project as Project,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProjectFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ProjectFormState implements _ProjectFormState {
  const _$_ProjectFormState(
      {@required this.project,
      @required this.showErrorMessages,
      @required this.isInitial,
      @required this.isEditing,
      @required this.isSaving,
      @required this.isDeleting,
      @required this.saveFailureOrSuccessOption,
      @required this.deleteFailureOrSuccessOption})
      : assert(project != null),
        assert(showErrorMessages != null),
        assert(isInitial != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(isDeleting != null),
        assert(saveFailureOrSuccessOption != null),
        assert(deleteFailureOrSuccessOption != null);

  @override
  final Project project;
  @override
  final bool showErrorMessages;
  @override
  final bool isInitial;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isDeleting;
  @override
  final Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final Option<Either<ProjectFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProjectFormState(project: $project, showErrorMessages: $showErrorMessages, isInitial: $isInitial, isEditing: $isEditing, isSaving: $isSaving, isDeleting: $isDeleting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectFormState &&
            (identical(other.project, project) ||
                const DeepCollectionEquality()
                    .equals(other.project, project)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isInitial, isInitial) ||
                const DeepCollectionEquality()
                    .equals(other.isInitial, isInitial)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
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
      const DeepCollectionEquality().hash(project) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isInitial) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption);

  @override
  _$ProjectFormStateCopyWith<_ProjectFormState> get copyWith =>
      __$ProjectFormStateCopyWithImpl<_ProjectFormState>(this, _$identity);
}

abstract class _ProjectFormState implements ProjectFormState {
  const factory _ProjectFormState(
      {@required
          Project project,
      @required
          bool showErrorMessages,
      @required
          bool isInitial,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isDeleting,
      @required
          Option<Either<ProjectFailure, Unit>> saveFailureOrSuccessOption,
      @required
          Option<Either<ProjectFailure, Unit>>
              deleteFailureOrSuccessOption}) = _$_ProjectFormState;

  @override
  Project get project;
  @override
  bool get showErrorMessages;
  @override
  bool get isInitial;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isDeleting;
  @override
  Option<Either<ProjectFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  Option<Either<ProjectFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  _$ProjectFormStateCopyWith<_ProjectFormState> get copyWith;
}

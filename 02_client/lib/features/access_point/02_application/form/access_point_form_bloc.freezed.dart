// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'access_point_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccessPointFormEventTearOff {
  const _$AccessPointFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(
      Option<AccessPoint> initialAccessPointOption, UniqueId projectId) {
    return _Initialized(
      initialAccessPointOption,
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
const $AccessPointFormEvent = _$AccessPointFormEventTearOff();

/// @nodoc
mixin _$AccessPointFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccessPointFormEventCopyWith<$Res> {
  factory $AccessPointFormEventCopyWith(AccessPointFormEvent value,
          $Res Function(AccessPointFormEvent) then) =
      _$AccessPointFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccessPointFormEventCopyWithImpl<$Res>
    implements $AccessPointFormEventCopyWith<$Res> {
  _$AccessPointFormEventCopyWithImpl(this._value, this._then);

  final AccessPointFormEvent _value;
  // ignore: unused_field
  final $Res Function(AccessPointFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<AccessPoint> initialAccessPointOption, UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AccessPointFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialAccessPointOption = freezed,
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      initialAccessPointOption == freezed
          ? _value.initialAccessPointOption
          : initialAccessPointOption as Option<AccessPoint>,
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialAccessPointOption, this.projectId)
      : assert(initialAccessPointOption != null),
        assert(projectId != null);

  @override
  final Option<AccessPoint> initialAccessPointOption;
  @override
  final UniqueId projectId;

  @override
  String toString() {
    return 'AccessPointFormEvent.initialized(initialAccessPointOption: $initialAccessPointOption, projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(
                    other.initialAccessPointOption, initialAccessPointOption) ||
                const DeepCollectionEquality().equals(
                    other.initialAccessPointOption,
                    initialAccessPointOption)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialAccessPointOption) ^
      const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(initialAccessPointOption, projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    Result nameChanged(String nameStr),
    Result saved(),
    Result deleted(UniqueId id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialAccessPointOption, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
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

abstract class _Initialized implements AccessPointFormEvent {
  const factory _Initialized(
          Option<AccessPoint> initialAccessPointOption, UniqueId projectId) =
      _$_Initialized;

  Option<AccessPoint> get initialAccessPointOption;
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
    extends _$AccessPointFormEventCopyWithImpl<$Res>
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
    return 'AccessPointFormEvent.nameChanged(nameStr: $nameStr)';
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
            Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    Result nameChanged(String nameStr),
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
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
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

abstract class _NameChanged implements AccessPointFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$AccessPointFormEventCopyWithImpl<$Res>
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
    return 'AccessPointFormEvent.saved()';
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
            Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    Result nameChanged(String nameStr),
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
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
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

abstract class _Saved implements AccessPointFormEvent {
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
    extends _$AccessPointFormEventCopyWithImpl<$Res>
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
    return 'AccessPointFormEvent.deleted(id: $id)';
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
            Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
    @required Result deleted(UniqueId id),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<AccessPoint> initialAccessPointOption, UniqueId projectId),
    Result nameChanged(String nameStr),
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
    @required Result saved(_Saved value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
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

abstract class _Deleted implements AccessPointFormEvent {
  const factory _Deleted(UniqueId id) = _$_Deleted;

  UniqueId get id;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$AccessPointFormStateTearOff {
  const _$AccessPointFormStateTearOff();

// ignore: unused_element
  _AccessPointFormState call(
      {AccessPoint accessPoint,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isDeleting,
      @required
          bool isSaving,
      @required
          Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<AccessPointFailure, Unit>> deleteFailureOrSuccessOption}) {
    return _AccessPointFormState(
      accessPoint: accessPoint,
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
const $AccessPointFormState = _$AccessPointFormStateTearOff();

/// @nodoc
mixin _$AccessPointFormState {
  AccessPoint get accessPoint;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isDeleting;
  bool get isSaving;
  Option<Either<AccessPointFailure, Unit>> get saveFailureOrSuccessOption;
  Option<Either<AccessPointFailure, Unit>> get deleteFailureOrSuccessOption;

  $AccessPointFormStateCopyWith<AccessPointFormState> get copyWith;
}

/// @nodoc
abstract class $AccessPointFormStateCopyWith<$Res> {
  factory $AccessPointFormStateCopyWith(AccessPointFormState value,
          $Res Function(AccessPointFormState) then) =
      _$AccessPointFormStateCopyWithImpl<$Res>;
  $Res call(
      {AccessPoint accessPoint,
      bool showErrorMessages,
      bool isEditing,
      bool isDeleting,
      bool isSaving,
      Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<AccessPointFailure, Unit>> deleteFailureOrSuccessOption});

  $AccessPointCopyWith<$Res> get accessPoint;
}

/// @nodoc
class _$AccessPointFormStateCopyWithImpl<$Res>
    implements $AccessPointFormStateCopyWith<$Res> {
  _$AccessPointFormStateCopyWithImpl(this._value, this._then);

  final AccessPointFormState _value;
  // ignore: unused_field
  final $Res Function(AccessPointFormState) _then;

  @override
  $Res call({
    Object accessPoint = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isDeleting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      accessPoint: accessPoint == freezed
          ? _value.accessPoint
          : accessPoint as AccessPoint,
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
              as Option<Either<AccessPointFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<AccessPointFailure, Unit>>,
    ));
  }

  @override
  $AccessPointCopyWith<$Res> get accessPoint {
    if (_value.accessPoint == null) {
      return null;
    }
    return $AccessPointCopyWith<$Res>(_value.accessPoint, (value) {
      return _then(_value.copyWith(accessPoint: value));
    });
  }
}

/// @nodoc
abstract class _$AccessPointFormStateCopyWith<$Res>
    implements $AccessPointFormStateCopyWith<$Res> {
  factory _$AccessPointFormStateCopyWith(_AccessPointFormState value,
          $Res Function(_AccessPointFormState) then) =
      __$AccessPointFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AccessPoint accessPoint,
      bool showErrorMessages,
      bool isEditing,
      bool isDeleting,
      bool isSaving,
      Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<AccessPointFailure, Unit>> deleteFailureOrSuccessOption});

  @override
  $AccessPointCopyWith<$Res> get accessPoint;
}

/// @nodoc
class __$AccessPointFormStateCopyWithImpl<$Res>
    extends _$AccessPointFormStateCopyWithImpl<$Res>
    implements _$AccessPointFormStateCopyWith<$Res> {
  __$AccessPointFormStateCopyWithImpl(
      _AccessPointFormState _value, $Res Function(_AccessPointFormState) _then)
      : super(_value, (v) => _then(v as _AccessPointFormState));

  @override
  _AccessPointFormState get _value => super._value as _AccessPointFormState;

  @override
  $Res call({
    Object accessPoint = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isDeleting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
  }) {
    return _then(_AccessPointFormState(
      accessPoint: accessPoint == freezed
          ? _value.accessPoint
          : accessPoint as AccessPoint,
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
              as Option<Either<AccessPointFailure, Unit>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<AccessPointFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AccessPointFormState implements _AccessPointFormState {
  const _$_AccessPointFormState(
      {this.accessPoint,
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
  final AccessPoint accessPoint;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isDeleting;
  @override
  final bool isSaving;
  @override
  final Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final Option<Either<AccessPointFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'AccessPointFormState(accessPoint: $accessPoint, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isDeleting: $isDeleting, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessPointFormState &&
            (identical(other.accessPoint, accessPoint) ||
                const DeepCollectionEquality()
                    .equals(other.accessPoint, accessPoint)) &&
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
      const DeepCollectionEquality().hash(accessPoint) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption);

  @override
  _$AccessPointFormStateCopyWith<_AccessPointFormState> get copyWith =>
      __$AccessPointFormStateCopyWithImpl<_AccessPointFormState>(
          this, _$identity);
}

abstract class _AccessPointFormState implements AccessPointFormState {
  const factory _AccessPointFormState(
      {AccessPoint accessPoint,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isDeleting,
      @required
          bool isSaving,
      @required
          Option<Either<AccessPointFailure, Unit>> saveFailureOrSuccessOption,
      Option<Either<AccessPointFailure, Unit>>
          deleteFailureOrSuccessOption}) = _$_AccessPointFormState;

  @override
  AccessPoint get accessPoint;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isDeleting;
  @override
  bool get isSaving;
  @override
  Option<Either<AccessPointFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  Option<Either<AccessPointFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  _$AccessPointFormStateCopyWith<_AccessPointFormState> get copyWith;
}

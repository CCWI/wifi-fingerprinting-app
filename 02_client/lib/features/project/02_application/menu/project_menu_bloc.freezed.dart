// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectMenuEventTearOff {
  const _$ProjectMenuEventTearOff();

// ignore: unused_element
  _Initialized initialized(UniqueId projectId) {
    return _Initialized(
      projectId,
    );
  }

// ignore: unused_element
  _ProjectReceived projectReceived(
      Either<ProjectFailure, Project> failureOrProject) {
    return _ProjectReceived(
      failureOrProject,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectMenuEvent = _$ProjectMenuEventTearOff();

/// @nodoc
mixin _$ProjectMenuEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required
        Result projectReceived(
            Either<ProjectFailure, Project> failureOrProject),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result projectReceived(Either<ProjectFailure, Project> failureOrProject),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result projectReceived(_ProjectReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result projectReceived(_ProjectReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectMenuEventCopyWith<$Res> {
  factory $ProjectMenuEventCopyWith(
          ProjectMenuEvent value, $Res Function(ProjectMenuEvent) then) =
      _$ProjectMenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectMenuEventCopyWithImpl<$Res>
    implements $ProjectMenuEventCopyWith<$Res> {
  _$ProjectMenuEventCopyWithImpl(this._value, this._then);

  final ProjectMenuEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectMenuEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UniqueId projectId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ProjectMenuEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object projectId = freezed,
  }) {
    return _then(_Initialized(
      projectId == freezed ? _value.projectId : projectId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.projectId) : assert(projectId != null);

  @override
  final UniqueId projectId;

  @override
  String toString() {
    return 'ProjectMenuEvent.initialized(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required
        Result projectReceived(
            Either<ProjectFailure, Project> failureOrProject),
  }) {
    assert(initialized != null);
    assert(projectReceived != null);
    return initialized(projectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result projectReceived(Either<ProjectFailure, Project> failureOrProject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result projectReceived(_ProjectReceived value),
  }) {
    assert(initialized != null);
    assert(projectReceived != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result projectReceived(_ProjectReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProjectMenuEvent {
  const factory _Initialized(UniqueId projectId) = _$_Initialized;

  UniqueId get projectId;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$ProjectReceivedCopyWith<$Res> {
  factory _$ProjectReceivedCopyWith(
          _ProjectReceived value, $Res Function(_ProjectReceived) then) =
      __$ProjectReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProjectFailure, Project> failureOrProject});
}

/// @nodoc
class __$ProjectReceivedCopyWithImpl<$Res>
    extends _$ProjectMenuEventCopyWithImpl<$Res>
    implements _$ProjectReceivedCopyWith<$Res> {
  __$ProjectReceivedCopyWithImpl(
      _ProjectReceived _value, $Res Function(_ProjectReceived) _then)
      : super(_value, (v) => _then(v as _ProjectReceived));

  @override
  _ProjectReceived get _value => super._value as _ProjectReceived;

  @override
  $Res call({
    Object failureOrProject = freezed,
  }) {
    return _then(_ProjectReceived(
      failureOrProject == freezed
          ? _value.failureOrProject
          : failureOrProject as Either<ProjectFailure, Project>,
    ));
  }
}

/// @nodoc
class _$_ProjectReceived implements _ProjectReceived {
  const _$_ProjectReceived(this.failureOrProject)
      : assert(failureOrProject != null);

  @override
  final Either<ProjectFailure, Project> failureOrProject;

  @override
  String toString() {
    return 'ProjectMenuEvent.projectReceived(failureOrProject: $failureOrProject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectReceived &&
            (identical(other.failureOrProject, failureOrProject) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProject, failureOrProject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProject);

  @override
  _$ProjectReceivedCopyWith<_ProjectReceived> get copyWith =>
      __$ProjectReceivedCopyWithImpl<_ProjectReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId),
    @required
        Result projectReceived(
            Either<ProjectFailure, Project> failureOrProject),
  }) {
    assert(initialized != null);
    assert(projectReceived != null);
    return projectReceived(failureOrProject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId),
    Result projectReceived(Either<ProjectFailure, Project> failureOrProject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectReceived != null) {
      return projectReceived(failureOrProject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result projectReceived(_ProjectReceived value),
  }) {
    assert(initialized != null);
    assert(projectReceived != null);
    return projectReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result projectReceived(_ProjectReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectReceived != null) {
      return projectReceived(this);
    }
    return orElse();
  }
}

abstract class _ProjectReceived implements ProjectMenuEvent {
  const factory _ProjectReceived(
      Either<ProjectFailure, Project> failureOrProject) = _$_ProjectReceived;

  Either<ProjectFailure, Project> get failureOrProject;
  _$ProjectReceivedCopyWith<_ProjectReceived> get copyWith;
}

/// @nodoc
class _$ProjectMenuStateTearOff {
  const _$ProjectMenuStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

// ignore: unused_element
  LoadSuccess loadScuccess(Project project) {
    return LoadSuccess(
      project,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(ProjectFailure projectFailure) {
    return LoadFailure(
      projectFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectMenuState = _$ProjectMenuStateTearOff();

/// @nodoc
mixin _$ProjectMenuState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadScuccess(Project project),
    @required Result loadFailure(ProjectFailure projectFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadScuccess(Project project),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadScuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadScuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectMenuStateCopyWith<$Res> {
  factory $ProjectMenuStateCopyWith(
          ProjectMenuState value, $Res Function(ProjectMenuState) then) =
      _$ProjectMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectMenuStateCopyWithImpl<$Res>
    implements $ProjectMenuStateCopyWith<$Res> {
  _$ProjectMenuStateCopyWithImpl(this._value, this._then);

  final ProjectMenuState _value;
  // ignore: unused_field
  final $Res Function(ProjectMenuState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ProjectMenuStateCopyWithImpl<$Res>
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
    return 'ProjectMenuState.initial()';
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
    @required Result loadScuccess(Project project),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadScuccess(Project project),
    Result loadFailure(ProjectFailure projectFailure),
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
    @required Result loadScuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadScuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProjectMenuState {
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
    extends _$ProjectMenuStateCopyWithImpl<$Res>
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
    return 'ProjectMenuState.loadInProgress()';
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
    @required Result loadScuccess(Project project),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadScuccess(Project project),
    Result loadFailure(ProjectFailure projectFailure),
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
    @required Result loadScuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadScuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ProjectMenuState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ProjectMenuStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object project = freezed,
  }) {
    return _then(LoadSuccess(
      project == freezed ? _value.project : project as Project,
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
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.project) : assert(project != null);

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectMenuState.loadScuccess(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadScuccess(Project project),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadScuccess(project);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadScuccess(Project project),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadScuccess != null) {
      return loadScuccess(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadScuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadScuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadScuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadScuccess != null) {
      return loadScuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ProjectMenuState {
  const factory LoadSuccess(Project project) = _$LoadSuccess;

  Project get project;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProjectFailure projectFailure});

  $ProjectFailureCopyWith<$Res> get projectFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$ProjectMenuStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object projectFailure = freezed,
  }) {
    return _then(LoadFailure(
      projectFailure == freezed
          ? _value.projectFailure
          : projectFailure as ProjectFailure,
    ));
  }

  @override
  $ProjectFailureCopyWith<$Res> get projectFailure {
    if (_value.projectFailure == null) {
      return null;
    }
    return $ProjectFailureCopyWith<$Res>(_value.projectFailure, (value) {
      return _then(_value.copyWith(projectFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.projectFailure) : assert(projectFailure != null);

  @override
  final ProjectFailure projectFailure;

  @override
  String toString() {
    return 'ProjectMenuState.loadFailure(projectFailure: $projectFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.projectFailure, projectFailure) ||
                const DeepCollectionEquality()
                    .equals(other.projectFailure, projectFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadScuccess(Project project),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadFailure(projectFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadScuccess(Project project),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(projectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadScuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadScuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadScuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ProjectMenuState {
  const factory LoadFailure(ProjectFailure projectFailure) = _$LoadFailure;

  ProjectFailure get projectFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

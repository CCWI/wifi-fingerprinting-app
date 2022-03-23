// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectsEventTearOff {
  const _$ProjectsEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ProjectsReceived projectsReceived(
      Either<ProjectFailure, KtList<Project>> failureOrProjects) {
    return _ProjectsReceived(
      failureOrProjects,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectsEvent = _$ProjectsEventTearOff();

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result projectsReceived(_ProjectsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(
          ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res>
    implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  final ProjectsEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted
    with DiagnosticableTreeMixin
    implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsEvent.watchAllStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectsEvent.watchAllStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(watchAllStarted != null);
    assert(projectsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(projectsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ProjectsEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ProjectsReceivedCopyWith<$Res> {
  factory _$ProjectsReceivedCopyWith(
          _ProjectsReceived value, $Res Function(_ProjectsReceived) then) =
      __$ProjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProjectFailure, KtList<Project>> failureOrProjects});
}

/// @nodoc
class __$ProjectsReceivedCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res>
    implements _$ProjectsReceivedCopyWith<$Res> {
  __$ProjectsReceivedCopyWithImpl(
      _ProjectsReceived _value, $Res Function(_ProjectsReceived) _then)
      : super(_value, (v) => _then(v as _ProjectsReceived));

  @override
  _ProjectsReceived get _value => super._value as _ProjectsReceived;

  @override
  $Res call({
    Object failureOrProjects = freezed,
  }) {
    return _then(_ProjectsReceived(
      failureOrProjects == freezed
          ? _value.failureOrProjects
          : failureOrProjects as Either<ProjectFailure, KtList<Project>>,
    ));
  }
}

/// @nodoc
class _$_ProjectsReceived
    with DiagnosticableTreeMixin
    implements _ProjectsReceived {
  const _$_ProjectsReceived(this.failureOrProjects)
      : assert(failureOrProjects != null);

  @override
  final Either<ProjectFailure, KtList<Project>> failureOrProjects;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsEvent.projectsReceived(failureOrProjects: $failureOrProjects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectsEvent.projectsReceived'))
      ..add(DiagnosticsProperty('failureOrProjects', failureOrProjects));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectsReceived &&
            (identical(other.failureOrProjects, failureOrProjects) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProjects, failureOrProjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProjects);

  @override
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith =>
      __$ProjectsReceivedCopyWithImpl<_ProjectsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(watchAllStarted != null);
    assert(projectsReceived != null);
    return projectsReceived(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(failureOrProjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(projectsReceived != null);
    return projectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProjectsReceived implements ProjectsEvent {
  const factory _ProjectsReceived(
          Either<ProjectFailure, KtList<Project>> failureOrProjects) =
      _$_ProjectsReceived;

  Either<ProjectFailure, KtList<Project>> get failureOrProjects;
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith;
}

/// @nodoc
class _$ProjectsStateTearOff {
  const _$ProjectsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<Project> projects) {
    return LoadSuccess(
      projects,
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
const $ProjectsState = _$ProjectsStateTearOff();

/// @nodoc
mixin _$ProjectsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  final ProjectsState _value;
  // ignore: unused_field
  final $Res Function(ProjectsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProjectsState.initial'));
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
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Project> projects),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class Initial implements ProjectsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

/// @nodoc
class _$DataTransferInProgress
    with DiagnosticableTreeMixin
    implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectsState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Project> projects),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class DataTransferInProgress implements ProjectsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Project> projects});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object projects = freezed,
  }) {
    return _then(LoadSuccess(
      projects == freezed ? _value.projects : projects as KtList<Project>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.projects) : assert(projects != null);

  @override
  final KtList<Project> projects;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsState.loadSuccess(projects: $projects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectsState.loadSuccess'))
      ..add(DiagnosticsProperty('projects', projects));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(projects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ProjectsState {
  const factory LoadSuccess(KtList<Project> projects) = _$LoadSuccess;

  KtList<Project> get projects;
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
class _$LoadFailureCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
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
class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.projectFailure) : assert(projectFailure != null);

  @override
  final ProjectFailure projectFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectsState.loadFailure(projectFailure: $projectFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectsState.loadFailure'))
      ..add(DiagnosticsProperty('projectFailure', projectFailure));
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
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(projectFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Project> projects),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
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

abstract class LoadFailure implements ProjectsState {
  const factory LoadFailure(ProjectFailure projectFailure) = _$LoadFailure;

  ProjectFailure get projectFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

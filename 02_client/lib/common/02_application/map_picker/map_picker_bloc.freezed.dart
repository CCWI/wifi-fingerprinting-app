// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MapPickerEventTearOff {
  const _$MapPickerEventTearOff();

// ignore: unused_element
  _Initialized initialized(UniqueId projectId, [Position resultPosition]) {
    return _Initialized(
      projectId,
      resultPosition,
    );
  }

// ignore: unused_element
  _FloorPicked floorPicked(FloorMap floor) {
    return _FloorPicked(
      floor,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapPickerEvent = _$MapPickerEventTearOff();

/// @nodoc
mixin _$MapPickerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId, Position resultPosition),
    @required Result floorPicked(FloorMap floor),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId, Position resultPosition),
    Result floorPicked(FloorMap floor),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result floorPicked(_FloorPicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result floorPicked(_FloorPicked value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MapPickerEventCopyWith<$Res> {
  factory $MapPickerEventCopyWith(
          MapPickerEvent value, $Res Function(MapPickerEvent) then) =
      _$MapPickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapPickerEventCopyWithImpl<$Res>
    implements $MapPickerEventCopyWith<$Res> {
  _$MapPickerEventCopyWithImpl(this._value, this._then);

  final MapPickerEvent _value;
  // ignore: unused_field
  final $Res Function(MapPickerEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UniqueId projectId, Position resultPosition});

  $PositionCopyWith<$Res> get resultPosition;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$MapPickerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object projectId = freezed,
    Object resultPosition = freezed,
  }) {
    return _then(_Initialized(
      projectId == freezed ? _value.projectId : projectId as UniqueId,
      resultPosition == freezed
          ? _value.resultPosition
          : resultPosition as Position,
    ));
  }

  @override
  $PositionCopyWith<$Res> get resultPosition {
    if (_value.resultPosition == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.resultPosition, (value) {
      return _then(_value.copyWith(resultPosition: value));
    });
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.projectId, [this.resultPosition])
      : assert(projectId != null);

  @override
  final UniqueId projectId;
  @override
  final Position resultPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerEvent.initialized(projectId: $projectId, resultPosition: $resultPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerEvent.initialized'))
      ..add(DiagnosticsProperty('projectId', projectId))
      ..add(DiagnosticsProperty('resultPosition', resultPosition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.resultPosition, resultPosition) ||
                const DeepCollectionEquality()
                    .equals(other.resultPosition, resultPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(resultPosition);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId, Position resultPosition),
    @required Result floorPicked(FloorMap floor),
  }) {
    assert(initialized != null);
    assert(floorPicked != null);
    return initialized(projectId, resultPosition);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId, Position resultPosition),
    Result floorPicked(FloorMap floor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(projectId, resultPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result floorPicked(_FloorPicked value),
  }) {
    assert(initialized != null);
    assert(floorPicked != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result floorPicked(_FloorPicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MapPickerEvent {
  const factory _Initialized(UniqueId projectId, [Position resultPosition]) =
      _$_Initialized;

  UniqueId get projectId;
  Position get resultPosition;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$FloorPickedCopyWith<$Res> {
  factory _$FloorPickedCopyWith(
          _FloorPicked value, $Res Function(_FloorPicked) then) =
      __$FloorPickedCopyWithImpl<$Res>;
  $Res call({FloorMap floor});

  $FloorMapCopyWith<$Res> get floor;
}

/// @nodoc
class __$FloorPickedCopyWithImpl<$Res>
    extends _$MapPickerEventCopyWithImpl<$Res>
    implements _$FloorPickedCopyWith<$Res> {
  __$FloorPickedCopyWithImpl(
      _FloorPicked _value, $Res Function(_FloorPicked) _then)
      : super(_value, (v) => _then(v as _FloorPicked));

  @override
  _FloorPicked get _value => super._value as _FloorPicked;

  @override
  $Res call({
    Object floor = freezed,
  }) {
    return _then(_FloorPicked(
      floor == freezed ? _value.floor : floor as FloorMap,
    ));
  }

  @override
  $FloorMapCopyWith<$Res> get floor {
    if (_value.floor == null) {
      return null;
    }
    return $FloorMapCopyWith<$Res>(_value.floor, (value) {
      return _then(_value.copyWith(floor: value));
    });
  }
}

/// @nodoc
class _$_FloorPicked with DiagnosticableTreeMixin implements _FloorPicked {
  const _$_FloorPicked(this.floor) : assert(floor != null);

  @override
  final FloorMap floor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerEvent.floorPicked(floor: $floor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerEvent.floorPicked'))
      ..add(DiagnosticsProperty('floor', floor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorPicked &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(floor);

  @override
  _$FloorPickedCopyWith<_FloorPicked> get copyWith =>
      __$FloorPickedCopyWithImpl<_FloorPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(UniqueId projectId, Position resultPosition),
    @required Result floorPicked(FloorMap floor),
  }) {
    assert(initialized != null);
    assert(floorPicked != null);
    return floorPicked(floor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(UniqueId projectId, Position resultPosition),
    Result floorPicked(FloorMap floor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorPicked != null) {
      return floorPicked(floor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result floorPicked(_FloorPicked value),
  }) {
    assert(initialized != null);
    assert(floorPicked != null);
    return floorPicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result floorPicked(_FloorPicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorPicked != null) {
      return floorPicked(this);
    }
    return orElse();
  }
}

abstract class _FloorPicked implements MapPickerEvent {
  const factory _FloorPicked(FloorMap floor) = _$_FloorPicked;

  FloorMap get floor;
  _$FloorPickedCopyWith<_FloorPicked> get copyWith;
}

/// @nodoc
class _$MapPickerStateTearOff {
  const _$MapPickerStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

// ignore: unused_element
  FloorsLoadSuccess floorsLoadSuccess(List25<FloorMap> floors) {
    return FloorsLoadSuccess(
      floors,
    );
  }

// ignore: unused_element
  ImageLoadSuccess imageLoadSuccess(
      ImageProvider<dynamic> image, Offset cartesianDimensions) {
    return ImageLoadSuccess(
      image,
      cartesianDimensions,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(ProjectFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapPickerState = _$MapPickerStateTearOff();

/// @nodoc
mixin _$MapPickerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MapPickerStateCopyWith<$Res> {
  factory $MapPickerStateCopyWith(
          MapPickerState value, $Res Function(MapPickerState) then) =
      _$MapPickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapPickerStateCopyWithImpl<$Res>
    implements $MapPickerStateCopyWith<$Res> {
  _$MapPickerStateCopyWithImpl(this._value, this._then);

  final MapPickerState _value;
  // ignore: unused_field
  final $Res Function(MapPickerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MapPickerStateCopyWithImpl<$Res>
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
    return 'MapPickerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapPickerState.initial'));
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
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
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
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
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

abstract class Initial implements MapPickerState {
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
    extends _$MapPickerStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc
class _$LoadInProgress with DiagnosticableTreeMixin implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerState.loadInProgress'));
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
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
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
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
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

abstract class LoadInProgress implements MapPickerState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $FloorsLoadSuccessCopyWith<$Res> {
  factory $FloorsLoadSuccessCopyWith(
          FloorsLoadSuccess value, $Res Function(FloorsLoadSuccess) then) =
      _$FloorsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List25<FloorMap> floors});
}

/// @nodoc
class _$FloorsLoadSuccessCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res>
    implements $FloorsLoadSuccessCopyWith<$Res> {
  _$FloorsLoadSuccessCopyWithImpl(
      FloorsLoadSuccess _value, $Res Function(FloorsLoadSuccess) _then)
      : super(_value, (v) => _then(v as FloorsLoadSuccess));

  @override
  FloorsLoadSuccess get _value => super._value as FloorsLoadSuccess;

  @override
  $Res call({
    Object floors = freezed,
  }) {
    return _then(FloorsLoadSuccess(
      floors == freezed ? _value.floors : floors as List25<FloorMap>,
    ));
  }
}

/// @nodoc
class _$FloorsLoadSuccess
    with DiagnosticableTreeMixin
    implements FloorsLoadSuccess {
  const _$FloorsLoadSuccess(this.floors) : assert(floors != null);

  @override
  final List25<FloorMap> floors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerState.floorsLoadSuccess(floors: $floors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerState.floorsLoadSuccess'))
      ..add(DiagnosticsProperty('floors', floors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FloorsLoadSuccess &&
            (identical(other.floors, floors) ||
                const DeepCollectionEquality().equals(other.floors, floors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(floors);

  @override
  $FloorsLoadSuccessCopyWith<FloorsLoadSuccess> get copyWith =>
      _$FloorsLoadSuccessCopyWithImpl<FloorsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return floorsLoadSuccess(floors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorsLoadSuccess != null) {
      return floorsLoadSuccess(floors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return floorsLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (floorsLoadSuccess != null) {
      return floorsLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class FloorsLoadSuccess implements MapPickerState {
  const factory FloorsLoadSuccess(List25<FloorMap> floors) =
      _$FloorsLoadSuccess;

  List25<FloorMap> get floors;
  $FloorsLoadSuccessCopyWith<FloorsLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $ImageLoadSuccessCopyWith<$Res> {
  factory $ImageLoadSuccessCopyWith(
          ImageLoadSuccess value, $Res Function(ImageLoadSuccess) then) =
      _$ImageLoadSuccessCopyWithImpl<$Res>;
  $Res call({ImageProvider<dynamic> image, Offset cartesianDimensions});
}

/// @nodoc
class _$ImageLoadSuccessCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res>
    implements $ImageLoadSuccessCopyWith<$Res> {
  _$ImageLoadSuccessCopyWithImpl(
      ImageLoadSuccess _value, $Res Function(ImageLoadSuccess) _then)
      : super(_value, (v) => _then(v as ImageLoadSuccess));

  @override
  ImageLoadSuccess get _value => super._value as ImageLoadSuccess;

  @override
  $Res call({
    Object image = freezed,
    Object cartesianDimensions = freezed,
  }) {
    return _then(ImageLoadSuccess(
      image == freezed ? _value.image : image as ImageProvider<dynamic>,
      cartesianDimensions == freezed
          ? _value.cartesianDimensions
          : cartesianDimensions as Offset,
    ));
  }
}

/// @nodoc
class _$ImageLoadSuccess
    with DiagnosticableTreeMixin
    implements ImageLoadSuccess {
  const _$ImageLoadSuccess(this.image, this.cartesianDimensions)
      : assert(image != null),
        assert(cartesianDimensions != null);

  @override
  final ImageProvider<dynamic> image;
  @override
  final Offset cartesianDimensions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerState.imageLoadSuccess(image: $image, cartesianDimensions: $cartesianDimensions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerState.imageLoadSuccess'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('cartesianDimensions', cartesianDimensions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageLoadSuccess &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.cartesianDimensions, cartesianDimensions) ||
                const DeepCollectionEquality()
                    .equals(other.cartesianDimensions, cartesianDimensions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(cartesianDimensions);

  @override
  $ImageLoadSuccessCopyWith<ImageLoadSuccess> get copyWith =>
      _$ImageLoadSuccessCopyWithImpl<ImageLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return imageLoadSuccess(image, cartesianDimensions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadSuccess != null) {
      return imageLoadSuccess(image, cartesianDimensions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return imageLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadSuccess != null) {
      return imageLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class ImageLoadSuccess implements MapPickerState {
  const factory ImageLoadSuccess(
          ImageProvider<dynamic> image, Offset cartesianDimensions) =
      _$ImageLoadSuccess;

  ImageProvider<dynamic> get image;
  Offset get cartesianDimensions;
  $ImageLoadSuccessCopyWith<ImageLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProjectFailure failure});

  $ProjectFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$MapPickerStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as ProjectFailure,
    ));
  }

  @override
  $ProjectFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ProjectFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final ProjectFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapPickerState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapPickerState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
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
    @required Result floorsLoadSuccess(List25<FloorMap> floors),
    @required
        Result imageLoadSuccess(
            ImageProvider<dynamic> image, Offset cartesianDimensions),
    @required Result loadFailure(ProjectFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result floorsLoadSuccess(List25<FloorMap> floors),
    Result imageLoadSuccess(
        ImageProvider<dynamic> image, Offset cartesianDimensions),
    Result loadFailure(ProjectFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result floorsLoadSuccess(FloorsLoadSuccess value),
    @required Result imageLoadSuccess(ImageLoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(floorsLoadSuccess != null);
    assert(imageLoadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result floorsLoadSuccess(FloorsLoadSuccess value),
    Result imageLoadSuccess(ImageLoadSuccess value),
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

abstract class LoadFailure implements MapPickerState {
  const factory LoadFailure(ProjectFailure failure) = _$LoadFailure;

  ProjectFailure get failure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectDetailsTearOff {
  const _$ProjectDetailsTearOff();

// ignore: unused_element
  _ProjectDetails call(
      {@required UniqueId projectId,
      @required CoordinateValue xMaxValue,
      @required CoordinateValue yMaxValue,
      @required List25<FloorMap> floors}) {
    return _ProjectDetails(
      projectId: projectId,
      xMaxValue: xMaxValue,
      yMaxValue: yMaxValue,
      floors: floors,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectDetails = _$ProjectDetailsTearOff();

/// @nodoc
mixin _$ProjectDetails {
  UniqueId get projectId;
  CoordinateValue get xMaxValue;
  CoordinateValue get yMaxValue;
  List25<FloorMap> get floors;

  $ProjectDetailsCopyWith<ProjectDetails> get copyWith;
}

/// @nodoc
abstract class $ProjectDetailsCopyWith<$Res> {
  factory $ProjectDetailsCopyWith(
          ProjectDetails value, $Res Function(ProjectDetails) then) =
      _$ProjectDetailsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId projectId,
      CoordinateValue xMaxValue,
      CoordinateValue yMaxValue,
      List25<FloorMap> floors});
}

/// @nodoc
class _$ProjectDetailsCopyWithImpl<$Res>
    implements $ProjectDetailsCopyWith<$Res> {
  _$ProjectDetailsCopyWithImpl(this._value, this._then);

  final ProjectDetails _value;
  // ignore: unused_field
  final $Res Function(ProjectDetails) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object xMaxValue = freezed,
    Object yMaxValue = freezed,
    Object floors = freezed,
  }) {
    return _then(_value.copyWith(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      xMaxValue: xMaxValue == freezed
          ? _value.xMaxValue
          : xMaxValue as CoordinateValue,
      yMaxValue: yMaxValue == freezed
          ? _value.yMaxValue
          : yMaxValue as CoordinateValue,
      floors: floors == freezed ? _value.floors : floors as List25<FloorMap>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectDetailsCopyWith<$Res>
    implements $ProjectDetailsCopyWith<$Res> {
  factory _$ProjectDetailsCopyWith(
          _ProjectDetails value, $Res Function(_ProjectDetails) then) =
      __$ProjectDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId projectId,
      CoordinateValue xMaxValue,
      CoordinateValue yMaxValue,
      List25<FloorMap> floors});
}

/// @nodoc
class __$ProjectDetailsCopyWithImpl<$Res>
    extends _$ProjectDetailsCopyWithImpl<$Res>
    implements _$ProjectDetailsCopyWith<$Res> {
  __$ProjectDetailsCopyWithImpl(
      _ProjectDetails _value, $Res Function(_ProjectDetails) _then)
      : super(_value, (v) => _then(v as _ProjectDetails));

  @override
  _ProjectDetails get _value => super._value as _ProjectDetails;

  @override
  $Res call({
    Object projectId = freezed,
    Object xMaxValue = freezed,
    Object yMaxValue = freezed,
    Object floors = freezed,
  }) {
    return _then(_ProjectDetails(
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      xMaxValue: xMaxValue == freezed
          ? _value.xMaxValue
          : xMaxValue as CoordinateValue,
      yMaxValue: yMaxValue == freezed
          ? _value.yMaxValue
          : yMaxValue as CoordinateValue,
      floors: floors == freezed ? _value.floors : floors as List25<FloorMap>,
    ));
  }
}

/// @nodoc
class _$_ProjectDetails
    with DiagnosticableTreeMixin
    implements _ProjectDetails {
  const _$_ProjectDetails(
      {@required this.projectId,
      @required this.xMaxValue,
      @required this.yMaxValue,
      @required this.floors})
      : assert(projectId != null),
        assert(xMaxValue != null),
        assert(yMaxValue != null),
        assert(floors != null);

  @override
  final UniqueId projectId;
  @override
  final CoordinateValue xMaxValue;
  @override
  final CoordinateValue yMaxValue;
  @override
  final List25<FloorMap> floors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectDetails(projectId: $projectId, xMaxValue: $xMaxValue, yMaxValue: $yMaxValue, floors: $floors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectDetails'))
      ..add(DiagnosticsProperty('projectId', projectId))
      ..add(DiagnosticsProperty('xMaxValue', xMaxValue))
      ..add(DiagnosticsProperty('yMaxValue', yMaxValue))
      ..add(DiagnosticsProperty('floors', floors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectDetails &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.xMaxValue, xMaxValue) ||
                const DeepCollectionEquality()
                    .equals(other.xMaxValue, xMaxValue)) &&
            (identical(other.yMaxValue, yMaxValue) ||
                const DeepCollectionEquality()
                    .equals(other.yMaxValue, yMaxValue)) &&
            (identical(other.floors, floors) ||
                const DeepCollectionEquality().equals(other.floors, floors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(xMaxValue) ^
      const DeepCollectionEquality().hash(yMaxValue) ^
      const DeepCollectionEquality().hash(floors);

  @override
  _$ProjectDetailsCopyWith<_ProjectDetails> get copyWith =>
      __$ProjectDetailsCopyWithImpl<_ProjectDetails>(this, _$identity);
}

abstract class _ProjectDetails implements ProjectDetails {
  const factory _ProjectDetails(
      {@required UniqueId projectId,
      @required CoordinateValue xMaxValue,
      @required CoordinateValue yMaxValue,
      @required List25<FloorMap> floors}) = _$_ProjectDetails;

  @override
  UniqueId get projectId;
  @override
  CoordinateValue get xMaxValue;
  @override
  CoordinateValue get yMaxValue;
  @override
  List25<FloorMap> get floors;
  @override
  _$ProjectDetailsCopyWith<_ProjectDetails> get copyWith;
}

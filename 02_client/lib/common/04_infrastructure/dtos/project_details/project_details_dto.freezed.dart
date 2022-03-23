// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectDetailsDto _$ProjectDetailsDtoFromJson(Map<String, dynamic> json) {
  return _ProjectDetailsDto.fromJson(json);
}

/// @nodoc
class _$ProjectDetailsDtoTearOff {
  const _$ProjectDetailsDtoTearOff();

// ignore: unused_element
  _ProjectDetailsDto call(
      {@required String projectId,
      @required double xMaxValue,
      @required double yMaxValue,
      @required List<FloorMapDto> floors}) {
    return _ProjectDetailsDto(
      projectId: projectId,
      xMaxValue: xMaxValue,
      yMaxValue: yMaxValue,
      floors: floors,
    );
  }

// ignore: unused_element
  ProjectDetailsDto fromJson(Map<String, Object> json) {
    return ProjectDetailsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectDetailsDto = _$ProjectDetailsDtoTearOff();

/// @nodoc
mixin _$ProjectDetailsDto {
  String get projectId;
  double get xMaxValue;
  double get yMaxValue;
  List<FloorMapDto> get floors;

  Map<String, dynamic> toJson();
  $ProjectDetailsDtoCopyWith<ProjectDetailsDto> get copyWith;
}

/// @nodoc
abstract class $ProjectDetailsDtoCopyWith<$Res> {
  factory $ProjectDetailsDtoCopyWith(
          ProjectDetailsDto value, $Res Function(ProjectDetailsDto) then) =
      _$ProjectDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {String projectId,
      double xMaxValue,
      double yMaxValue,
      List<FloorMapDto> floors});
}

/// @nodoc
class _$ProjectDetailsDtoCopyWithImpl<$Res>
    implements $ProjectDetailsDtoCopyWith<$Res> {
  _$ProjectDetailsDtoCopyWithImpl(this._value, this._then);

  final ProjectDetailsDto _value;
  // ignore: unused_field
  final $Res Function(ProjectDetailsDto) _then;

  @override
  $Res call({
    Object projectId = freezed,
    Object xMaxValue = freezed,
    Object yMaxValue = freezed,
    Object floors = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      xMaxValue: xMaxValue == freezed ? _value.xMaxValue : xMaxValue as double,
      yMaxValue: yMaxValue == freezed ? _value.yMaxValue : yMaxValue as double,
      floors: floors == freezed ? _value.floors : floors as List<FloorMapDto>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectDetailsDtoCopyWith<$Res>
    implements $ProjectDetailsDtoCopyWith<$Res> {
  factory _$ProjectDetailsDtoCopyWith(
          _ProjectDetailsDto value, $Res Function(_ProjectDetailsDto) then) =
      __$ProjectDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String projectId,
      double xMaxValue,
      double yMaxValue,
      List<FloorMapDto> floors});
}

/// @nodoc
class __$ProjectDetailsDtoCopyWithImpl<$Res>
    extends _$ProjectDetailsDtoCopyWithImpl<$Res>
    implements _$ProjectDetailsDtoCopyWith<$Res> {
  __$ProjectDetailsDtoCopyWithImpl(
      _ProjectDetailsDto _value, $Res Function(_ProjectDetailsDto) _then)
      : super(_value, (v) => _then(v as _ProjectDetailsDto));

  @override
  _ProjectDetailsDto get _value => super._value as _ProjectDetailsDto;

  @override
  $Res call({
    Object projectId = freezed,
    Object xMaxValue = freezed,
    Object yMaxValue = freezed,
    Object floors = freezed,
  }) {
    return _then(_ProjectDetailsDto(
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      xMaxValue: xMaxValue == freezed ? _value.xMaxValue : xMaxValue as double,
      yMaxValue: yMaxValue == freezed ? _value.yMaxValue : yMaxValue as double,
      floors: floors == freezed ? _value.floors : floors as List<FloorMapDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProjectDetailsDto implements _ProjectDetailsDto {
  _$_ProjectDetailsDto(
      {@required this.projectId,
      @required this.xMaxValue,
      @required this.yMaxValue,
      @required this.floors})
      : assert(projectId != null),
        assert(xMaxValue != null),
        assert(yMaxValue != null),
        assert(floors != null);

  factory _$_ProjectDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProjectDetailsDtoFromJson(json);

  @override
  final String projectId;
  @override
  final double xMaxValue;
  @override
  final double yMaxValue;
  @override
  final List<FloorMapDto> floors;

  @override
  String toString() {
    return 'ProjectDetailsDto(projectId: $projectId, xMaxValue: $xMaxValue, yMaxValue: $yMaxValue, floors: $floors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectDetailsDto &&
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
  _$ProjectDetailsDtoCopyWith<_ProjectDetailsDto> get copyWith =>
      __$ProjectDetailsDtoCopyWithImpl<_ProjectDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProjectDetailsDtoToJson(this);
  }
}

abstract class _ProjectDetailsDto implements ProjectDetailsDto {
  factory _ProjectDetailsDto(
      {@required String projectId,
      @required double xMaxValue,
      @required double yMaxValue,
      @required List<FloorMapDto> floors}) = _$_ProjectDetailsDto;

  factory _ProjectDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_ProjectDetailsDto.fromJson;

  @override
  String get projectId;
  @override
  double get xMaxValue;
  @override
  double get yMaxValue;
  @override
  List<FloorMapDto> get floors;
  @override
  _$ProjectDetailsDtoCopyWith<_ProjectDetailsDto> get copyWith;
}

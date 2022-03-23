// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fingerprint_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FingerprintDto _$FingerprintDtoFromJson(Map<String, dynamic> json) {
  return _FingerprintDto.fromJson(json);
}

/// @nodoc
class _$FingerprintDtoTearOff {
  const _$FingerprintDtoTearOff();

// ignore: unused_element
  _FingerprintDto call(
      {@required String id,
      @required String projectId,
      @required DateTime timeOfCreation,
      @required SettingsDto currentSettings,
      @required List<LocationDistanceDto> locationDistances,
      @required List<CellDto> cellsIncludingPosition,
      @required Map<String, double> receivedNetworks,
      @required PositionDto calculatedPosition}) {
    return _FingerprintDto(
      id: id,
      projectId: projectId,
      timeOfCreation: timeOfCreation,
      currentSettings: currentSettings,
      locationDistances: locationDistances,
      cellsIncludingPosition: cellsIncludingPosition,
      receivedNetworks: receivedNetworks,
      calculatedPosition: calculatedPosition,
    );
  }

// ignore: unused_element
  FingerprintDto fromJson(Map<String, Object> json) {
    return FingerprintDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FingerprintDto = _$FingerprintDtoTearOff();

/// @nodoc
mixin _$FingerprintDto {
  String get id;
  String get projectId;
  DateTime get timeOfCreation;
  SettingsDto get currentSettings;
  List<LocationDistanceDto> get locationDistances;
  List<CellDto> get cellsIncludingPosition;
  Map<String, double> get receivedNetworks;
  PositionDto get calculatedPosition;

  Map<String, dynamic> toJson();
  $FingerprintDtoCopyWith<FingerprintDto> get copyWith;
}

/// @nodoc
abstract class $FingerprintDtoCopyWith<$Res> {
  factory $FingerprintDtoCopyWith(
          FingerprintDto value, $Res Function(FingerprintDto) then) =
      _$FingerprintDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String projectId,
      DateTime timeOfCreation,
      SettingsDto currentSettings,
      List<LocationDistanceDto> locationDistances,
      List<CellDto> cellsIncludingPosition,
      Map<String, double> receivedNetworks,
      PositionDto calculatedPosition});

  $SettingsDtoCopyWith<$Res> get currentSettings;
  $PositionDtoCopyWith<$Res> get calculatedPosition;
}

/// @nodoc
class _$FingerprintDtoCopyWithImpl<$Res>
    implements $FingerprintDtoCopyWith<$Res> {
  _$FingerprintDtoCopyWithImpl(this._value, this._then);

  final FingerprintDto _value;
  // ignore: unused_field
  final $Res Function(FingerprintDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object timeOfCreation = freezed,
    Object currentSettings = freezed,
    Object locationDistances = freezed,
    Object cellsIncludingPosition = freezed,
    Object receivedNetworks = freezed,
    Object calculatedPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      currentSettings: currentSettings == freezed
          ? _value.currentSettings
          : currentSettings as SettingsDto,
      locationDistances: locationDistances == freezed
          ? _value.locationDistances
          : locationDistances as List<LocationDistanceDto>,
      cellsIncludingPosition: cellsIncludingPosition == freezed
          ? _value.cellsIncludingPosition
          : cellsIncludingPosition as List<CellDto>,
      receivedNetworks: receivedNetworks == freezed
          ? _value.receivedNetworks
          : receivedNetworks as Map<String, double>,
      calculatedPosition: calculatedPosition == freezed
          ? _value.calculatedPosition
          : calculatedPosition as PositionDto,
    ));
  }

  @override
  $SettingsDtoCopyWith<$Res> get currentSettings {
    if (_value.currentSettings == null) {
      return null;
    }
    return $SettingsDtoCopyWith<$Res>(_value.currentSettings, (value) {
      return _then(_value.copyWith(currentSettings: value));
    });
  }

  @override
  $PositionDtoCopyWith<$Res> get calculatedPosition {
    if (_value.calculatedPosition == null) {
      return null;
    }
    return $PositionDtoCopyWith<$Res>(_value.calculatedPosition, (value) {
      return _then(_value.copyWith(calculatedPosition: value));
    });
  }
}

/// @nodoc
abstract class _$FingerprintDtoCopyWith<$Res>
    implements $FingerprintDtoCopyWith<$Res> {
  factory _$FingerprintDtoCopyWith(
          _FingerprintDto value, $Res Function(_FingerprintDto) then) =
      __$FingerprintDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String projectId,
      DateTime timeOfCreation,
      SettingsDto currentSettings,
      List<LocationDistanceDto> locationDistances,
      List<CellDto> cellsIncludingPosition,
      Map<String, double> receivedNetworks,
      PositionDto calculatedPosition});

  @override
  $SettingsDtoCopyWith<$Res> get currentSettings;
  @override
  $PositionDtoCopyWith<$Res> get calculatedPosition;
}

/// @nodoc
class __$FingerprintDtoCopyWithImpl<$Res>
    extends _$FingerprintDtoCopyWithImpl<$Res>
    implements _$FingerprintDtoCopyWith<$Res> {
  __$FingerprintDtoCopyWithImpl(
      _FingerprintDto _value, $Res Function(_FingerprintDto) _then)
      : super(_value, (v) => _then(v as _FingerprintDto));

  @override
  _FingerprintDto get _value => super._value as _FingerprintDto;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object timeOfCreation = freezed,
    Object currentSettings = freezed,
    Object locationDistances = freezed,
    Object cellsIncludingPosition = freezed,
    Object receivedNetworks = freezed,
    Object calculatedPosition = freezed,
  }) {
    return _then(_FingerprintDto(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      currentSettings: currentSettings == freezed
          ? _value.currentSettings
          : currentSettings as SettingsDto,
      locationDistances: locationDistances == freezed
          ? _value.locationDistances
          : locationDistances as List<LocationDistanceDto>,
      cellsIncludingPosition: cellsIncludingPosition == freezed
          ? _value.cellsIncludingPosition
          : cellsIncludingPosition as List<CellDto>,
      receivedNetworks: receivedNetworks == freezed
          ? _value.receivedNetworks
          : receivedNetworks as Map<String, double>,
      calculatedPosition: calculatedPosition == freezed
          ? _value.calculatedPosition
          : calculatedPosition as PositionDto,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FingerprintDto implements _FingerprintDto {
  _$_FingerprintDto(
      {@required this.id,
      @required this.projectId,
      @required this.timeOfCreation,
      @required this.currentSettings,
      @required this.locationDistances,
      @required this.cellsIncludingPosition,
      @required this.receivedNetworks,
      @required this.calculatedPosition})
      : assert(id != null),
        assert(projectId != null),
        assert(timeOfCreation != null),
        assert(currentSettings != null),
        assert(locationDistances != null),
        assert(cellsIncludingPosition != null),
        assert(receivedNetworks != null),
        assert(calculatedPosition != null);

  factory _$_FingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FingerprintDtoFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final DateTime timeOfCreation;
  @override
  final SettingsDto currentSettings;
  @override
  final List<LocationDistanceDto> locationDistances;
  @override
  final List<CellDto> cellsIncludingPosition;
  @override
  final Map<String, double> receivedNetworks;
  @override
  final PositionDto calculatedPosition;

  @override
  String toString() {
    return 'FingerprintDto(id: $id, projectId: $projectId, timeOfCreation: $timeOfCreation, currentSettings: $currentSettings, locationDistances: $locationDistances, cellsIncludingPosition: $cellsIncludingPosition, receivedNetworks: $receivedNetworks, calculatedPosition: $calculatedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FingerprintDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.timeOfCreation, timeOfCreation) ||
                const DeepCollectionEquality()
                    .equals(other.timeOfCreation, timeOfCreation)) &&
            (identical(other.currentSettings, currentSettings) ||
                const DeepCollectionEquality()
                    .equals(other.currentSettings, currentSettings)) &&
            (identical(other.locationDistances, locationDistances) ||
                const DeepCollectionEquality()
                    .equals(other.locationDistances, locationDistances)) &&
            (identical(other.cellsIncludingPosition, cellsIncludingPosition) ||
                const DeepCollectionEquality().equals(
                    other.cellsIncludingPosition, cellsIncludingPosition)) &&
            (identical(other.receivedNetworks, receivedNetworks) ||
                const DeepCollectionEquality()
                    .equals(other.receivedNetworks, receivedNetworks)) &&
            (identical(other.calculatedPosition, calculatedPosition) ||
                const DeepCollectionEquality()
                    .equals(other.calculatedPosition, calculatedPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(timeOfCreation) ^
      const DeepCollectionEquality().hash(currentSettings) ^
      const DeepCollectionEquality().hash(locationDistances) ^
      const DeepCollectionEquality().hash(cellsIncludingPosition) ^
      const DeepCollectionEquality().hash(receivedNetworks) ^
      const DeepCollectionEquality().hash(calculatedPosition);

  @override
  _$FingerprintDtoCopyWith<_FingerprintDto> get copyWith =>
      __$FingerprintDtoCopyWithImpl<_FingerprintDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FingerprintDtoToJson(this);
  }
}

abstract class _FingerprintDto implements FingerprintDto {
  factory _FingerprintDto(
      {@required String id,
      @required String projectId,
      @required DateTime timeOfCreation,
      @required SettingsDto currentSettings,
      @required List<LocationDistanceDto> locationDistances,
      @required List<CellDto> cellsIncludingPosition,
      @required Map<String, double> receivedNetworks,
      @required PositionDto calculatedPosition}) = _$_FingerprintDto;

  factory _FingerprintDto.fromJson(Map<String, dynamic> json) =
      _$_FingerprintDto.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  DateTime get timeOfCreation;
  @override
  SettingsDto get currentSettings;
  @override
  List<LocationDistanceDto> get locationDistances;
  @override
  List<CellDto> get cellsIncludingPosition;
  @override
  Map<String, double> get receivedNetworks;
  @override
  PositionDto get calculatedPosition;
  @override
  _$FingerprintDtoCopyWith<_FingerprintDto> get copyWith;
}

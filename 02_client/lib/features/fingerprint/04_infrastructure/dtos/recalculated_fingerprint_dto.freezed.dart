// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recalculated_fingerprint_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RecalculatedFingerprintDto _$RecalculatedFingerprintDtoFromJson(
    Map<String, dynamic> json) {
  return _RecalculatedFingerprintDto.fromJson(json);
}

/// @nodoc
class _$RecalculatedFingerprintDtoTearOff {
  const _$RecalculatedFingerprintDtoTearOff();

// ignore: unused_element
  _RecalculatedFingerprintDto call(
      {@required String id,
      @required String fingerprintBaseId,
      @required String projectId,
      @required DateTime timeOfCreation,
      @required SettingsDto currentSettings,
      @required List<LocationDistanceDto> locationDistances,
      @required List<CellDto> cellsIncludingPosition,
      @required Map<String, double> receivedNetworks,
      @required PositionDto calculatedPosition}) {
    return _RecalculatedFingerprintDto(
      id: id,
      fingerprintBaseId: fingerprintBaseId,
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
  RecalculatedFingerprintDto fromJson(Map<String, Object> json) {
    return RecalculatedFingerprintDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RecalculatedFingerprintDto = _$RecalculatedFingerprintDtoTearOff();

/// @nodoc
mixin _$RecalculatedFingerprintDto {
  String get id;
  String get fingerprintBaseId;
  String get projectId;
  DateTime get timeOfCreation;
  SettingsDto get currentSettings;
  List<LocationDistanceDto> get locationDistances;
  List<CellDto> get cellsIncludingPosition;
  Map<String, double> get receivedNetworks;
  PositionDto get calculatedPosition;

  Map<String, dynamic> toJson();
  $RecalculatedFingerprintDtoCopyWith<RecalculatedFingerprintDto> get copyWith;
}

/// @nodoc
abstract class $RecalculatedFingerprintDtoCopyWith<$Res> {
  factory $RecalculatedFingerprintDtoCopyWith(RecalculatedFingerprintDto value,
          $Res Function(RecalculatedFingerprintDto) then) =
      _$RecalculatedFingerprintDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fingerprintBaseId,
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
class _$RecalculatedFingerprintDtoCopyWithImpl<$Res>
    implements $RecalculatedFingerprintDtoCopyWith<$Res> {
  _$RecalculatedFingerprintDtoCopyWithImpl(this._value, this._then);

  final RecalculatedFingerprintDto _value;
  // ignore: unused_field
  final $Res Function(RecalculatedFingerprintDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fingerprintBaseId = freezed,
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
      fingerprintBaseId: fingerprintBaseId == freezed
          ? _value.fingerprintBaseId
          : fingerprintBaseId as String,
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
abstract class _$RecalculatedFingerprintDtoCopyWith<$Res>
    implements $RecalculatedFingerprintDtoCopyWith<$Res> {
  factory _$RecalculatedFingerprintDtoCopyWith(
          _RecalculatedFingerprintDto value,
          $Res Function(_RecalculatedFingerprintDto) then) =
      __$RecalculatedFingerprintDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fingerprintBaseId,
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
class __$RecalculatedFingerprintDtoCopyWithImpl<$Res>
    extends _$RecalculatedFingerprintDtoCopyWithImpl<$Res>
    implements _$RecalculatedFingerprintDtoCopyWith<$Res> {
  __$RecalculatedFingerprintDtoCopyWithImpl(_RecalculatedFingerprintDto _value,
      $Res Function(_RecalculatedFingerprintDto) _then)
      : super(_value, (v) => _then(v as _RecalculatedFingerprintDto));

  @override
  _RecalculatedFingerprintDto get _value =>
      super._value as _RecalculatedFingerprintDto;

  @override
  $Res call({
    Object id = freezed,
    Object fingerprintBaseId = freezed,
    Object projectId = freezed,
    Object timeOfCreation = freezed,
    Object currentSettings = freezed,
    Object locationDistances = freezed,
    Object cellsIncludingPosition = freezed,
    Object receivedNetworks = freezed,
    Object calculatedPosition = freezed,
  }) {
    return _then(_RecalculatedFingerprintDto(
      id: id == freezed ? _value.id : id as String,
      fingerprintBaseId: fingerprintBaseId == freezed
          ? _value.fingerprintBaseId
          : fingerprintBaseId as String,
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
class _$_RecalculatedFingerprintDto implements _RecalculatedFingerprintDto {
  _$_RecalculatedFingerprintDto(
      {@required this.id,
      @required this.fingerprintBaseId,
      @required this.projectId,
      @required this.timeOfCreation,
      @required this.currentSettings,
      @required this.locationDistances,
      @required this.cellsIncludingPosition,
      @required this.receivedNetworks,
      @required this.calculatedPosition})
      : assert(id != null),
        assert(fingerprintBaseId != null),
        assert(projectId != null),
        assert(timeOfCreation != null),
        assert(currentSettings != null),
        assert(locationDistances != null),
        assert(cellsIncludingPosition != null),
        assert(receivedNetworks != null),
        assert(calculatedPosition != null);

  factory _$_RecalculatedFingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RecalculatedFingerprintDtoFromJson(json);

  @override
  final String id;
  @override
  final String fingerprintBaseId;
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
    return 'RecalculatedFingerprintDto(id: $id, fingerprintBaseId: $fingerprintBaseId, projectId: $projectId, timeOfCreation: $timeOfCreation, currentSettings: $currentSettings, locationDistances: $locationDistances, cellsIncludingPosition: $cellsIncludingPosition, receivedNetworks: $receivedNetworks, calculatedPosition: $calculatedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecalculatedFingerprintDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fingerprintBaseId, fingerprintBaseId) ||
                const DeepCollectionEquality()
                    .equals(other.fingerprintBaseId, fingerprintBaseId)) &&
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
      const DeepCollectionEquality().hash(fingerprintBaseId) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(timeOfCreation) ^
      const DeepCollectionEquality().hash(currentSettings) ^
      const DeepCollectionEquality().hash(locationDistances) ^
      const DeepCollectionEquality().hash(cellsIncludingPosition) ^
      const DeepCollectionEquality().hash(receivedNetworks) ^
      const DeepCollectionEquality().hash(calculatedPosition);

  @override
  _$RecalculatedFingerprintDtoCopyWith<_RecalculatedFingerprintDto>
      get copyWith => __$RecalculatedFingerprintDtoCopyWithImpl<
          _RecalculatedFingerprintDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecalculatedFingerprintDtoToJson(this);
  }
}

abstract class _RecalculatedFingerprintDto
    implements RecalculatedFingerprintDto {
  factory _RecalculatedFingerprintDto(
          {@required String id,
          @required String fingerprintBaseId,
          @required String projectId,
          @required DateTime timeOfCreation,
          @required SettingsDto currentSettings,
          @required List<LocationDistanceDto> locationDistances,
          @required List<CellDto> cellsIncludingPosition,
          @required Map<String, double> receivedNetworks,
          @required PositionDto calculatedPosition}) =
      _$_RecalculatedFingerprintDto;

  factory _RecalculatedFingerprintDto.fromJson(Map<String, dynamic> json) =
      _$_RecalculatedFingerprintDto.fromJson;

  @override
  String get id;
  @override
  String get fingerprintBaseId;
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
  _$RecalculatedFingerprintDtoCopyWith<_RecalculatedFingerprintDto>
      get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fingerprint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FingerprintTearOff {
  const _$FingerprintTearOff();

// ignore: unused_element
  _Fingerprint call(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required DateTime timeOfCreation,
      @required Settings currentSettings,
      @required KtList<LocationDistance> locationDistances,
      @required KtList<Cell> cellsIncludingPosition,
      @required KtMap<BSSID, RSS> receivedNetworks,
      @required Position calculatedPosition}) {
    return _Fingerprint(
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
}

/// @nodoc
// ignore: unused_element
const $Fingerprint = _$FingerprintTearOff();

/// @nodoc
mixin _$Fingerprint {
  UniqueId get id;
  UniqueId get projectId;
  DateTime get timeOfCreation;
  Settings get currentSettings;
  KtList<LocationDistance> get locationDistances;
  KtList<Cell> get cellsIncludingPosition;
  KtMap<BSSID, RSS> get receivedNetworks;
  Position get calculatedPosition;

  $FingerprintCopyWith<Fingerprint> get copyWith;
}

/// @nodoc
abstract class $FingerprintCopyWith<$Res> {
  factory $FingerprintCopyWith(
          Fingerprint value, $Res Function(Fingerprint) then) =
      _$FingerprintCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      DateTime timeOfCreation,
      Settings currentSettings,
      KtList<LocationDistance> locationDistances,
      KtList<Cell> cellsIncludingPosition,
      KtMap<BSSID, RSS> receivedNetworks,
      Position calculatedPosition});

  $SettingsCopyWith<$Res> get currentSettings;
  $PositionCopyWith<$Res> get calculatedPosition;
}

/// @nodoc
class _$FingerprintCopyWithImpl<$Res> implements $FingerprintCopyWith<$Res> {
  _$FingerprintCopyWithImpl(this._value, this._then);

  final Fingerprint _value;
  // ignore: unused_field
  final $Res Function(Fingerprint) _then;

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
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      currentSettings: currentSettings == freezed
          ? _value.currentSettings
          : currentSettings as Settings,
      locationDistances: locationDistances == freezed
          ? _value.locationDistances
          : locationDistances as KtList<LocationDistance>,
      cellsIncludingPosition: cellsIncludingPosition == freezed
          ? _value.cellsIncludingPosition
          : cellsIncludingPosition as KtList<Cell>,
      receivedNetworks: receivedNetworks == freezed
          ? _value.receivedNetworks
          : receivedNetworks as KtMap<BSSID, RSS>,
      calculatedPosition: calculatedPosition == freezed
          ? _value.calculatedPosition
          : calculatedPosition as Position,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get currentSettings {
    if (_value.currentSettings == null) {
      return null;
    }
    return $SettingsCopyWith<$Res>(_value.currentSettings, (value) {
      return _then(_value.copyWith(currentSettings: value));
    });
  }

  @override
  $PositionCopyWith<$Res> get calculatedPosition {
    if (_value.calculatedPosition == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.calculatedPosition, (value) {
      return _then(_value.copyWith(calculatedPosition: value));
    });
  }
}

/// @nodoc
abstract class _$FingerprintCopyWith<$Res>
    implements $FingerprintCopyWith<$Res> {
  factory _$FingerprintCopyWith(
          _Fingerprint value, $Res Function(_Fingerprint) then) =
      __$FingerprintCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId projectId,
      DateTime timeOfCreation,
      Settings currentSettings,
      KtList<LocationDistance> locationDistances,
      KtList<Cell> cellsIncludingPosition,
      KtMap<BSSID, RSS> receivedNetworks,
      Position calculatedPosition});

  @override
  $SettingsCopyWith<$Res> get currentSettings;
  @override
  $PositionCopyWith<$Res> get calculatedPosition;
}

/// @nodoc
class __$FingerprintCopyWithImpl<$Res> extends _$FingerprintCopyWithImpl<$Res>
    implements _$FingerprintCopyWith<$Res> {
  __$FingerprintCopyWithImpl(
      _Fingerprint _value, $Res Function(_Fingerprint) _then)
      : super(_value, (v) => _then(v as _Fingerprint));

  @override
  _Fingerprint get _value => super._value as _Fingerprint;

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
    return _then(_Fingerprint(
      id: id == freezed ? _value.id : id as UniqueId,
      projectId:
          projectId == freezed ? _value.projectId : projectId as UniqueId,
      timeOfCreation: timeOfCreation == freezed
          ? _value.timeOfCreation
          : timeOfCreation as DateTime,
      currentSettings: currentSettings == freezed
          ? _value.currentSettings
          : currentSettings as Settings,
      locationDistances: locationDistances == freezed
          ? _value.locationDistances
          : locationDistances as KtList<LocationDistance>,
      cellsIncludingPosition: cellsIncludingPosition == freezed
          ? _value.cellsIncludingPosition
          : cellsIncludingPosition as KtList<Cell>,
      receivedNetworks: receivedNetworks == freezed
          ? _value.receivedNetworks
          : receivedNetworks as KtMap<BSSID, RSS>,
      calculatedPosition: calculatedPosition == freezed
          ? _value.calculatedPosition
          : calculatedPosition as Position,
    ));
  }
}

/// @nodoc
class _$_Fingerprint implements _Fingerprint {
  const _$_Fingerprint(
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

  @override
  final UniqueId id;
  @override
  final UniqueId projectId;
  @override
  final DateTime timeOfCreation;
  @override
  final Settings currentSettings;
  @override
  final KtList<LocationDistance> locationDistances;
  @override
  final KtList<Cell> cellsIncludingPosition;
  @override
  final KtMap<BSSID, RSS> receivedNetworks;
  @override
  final Position calculatedPosition;

  @override
  String toString() {
    return 'Fingerprint(id: $id, projectId: $projectId, timeOfCreation: $timeOfCreation, currentSettings: $currentSettings, locationDistances: $locationDistances, cellsIncludingPosition: $cellsIncludingPosition, receivedNetworks: $receivedNetworks, calculatedPosition: $calculatedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fingerprint &&
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
  _$FingerprintCopyWith<_Fingerprint> get copyWith =>
      __$FingerprintCopyWithImpl<_Fingerprint>(this, _$identity);
}

abstract class _Fingerprint implements Fingerprint {
  const factory _Fingerprint(
      {@required UniqueId id,
      @required UniqueId projectId,
      @required DateTime timeOfCreation,
      @required Settings currentSettings,
      @required KtList<LocationDistance> locationDistances,
      @required KtList<Cell> cellsIncludingPosition,
      @required KtMap<BSSID, RSS> receivedNetworks,
      @required Position calculatedPosition}) = _$_Fingerprint;

  @override
  UniqueId get id;
  @override
  UniqueId get projectId;
  @override
  DateTime get timeOfCreation;
  @override
  Settings get currentSettings;
  @override
  KtList<LocationDistance> get locationDistances;
  @override
  KtList<Cell> get cellsIncludingPosition;
  @override
  KtMap<BSSID, RSS> get receivedNetworks;
  @override
  Position get calculatedPosition;
  @override
  _$FingerprintCopyWith<_Fingerprint> get copyWith;
}

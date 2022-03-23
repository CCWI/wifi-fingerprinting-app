import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../../../common/04_infrastructure/dtos/locationdistance/location_distance_dto.dart';
import '../../../../common/04_infrastructure/dtos/position/position_dto.dart';
import '../../../../common/04_infrastructure/dtos/settings/settings_dto.dart';
import '../../../cell/04_infrastructure/dtos/cell_dto.dart';
import '../../03_domain/entities/recalculated_fingerprint.dart';

part 'recalculated_fingerprint_dto.freezed.dart';
part 'recalculated_fingerprint_dto.g.dart';

@freezed
abstract class RecalculatedFingerprintDto
    with _$RecalculatedFingerprintDto
    implements IDto {
  factory RecalculatedFingerprintDto({
    @required String id,
    @required String fingerprintBaseId,
    @required String projectId,
    @required DateTime timeOfCreation,
    @required SettingsDto currentSettings,
    @required List<LocationDistanceDto> locationDistances,
    @required List<CellDto> cellsIncludingPosition,
    @required Map<String, double> receivedNetworks,
    @required PositionDto calculatedPosition,
  }) = _RecalculatedFingerprintDto;

  factory RecalculatedFingerprintDto.fromDomain(
      RecalculatedFingerprint fingerprint) {
    return RecalculatedFingerprintDto(
      id: fingerprint.id.getOrCrash(),
      fingerprintBaseId: fingerprint.fingerprintBaseId.getOrCrash(),
      projectId: fingerprint.projectId.getOrCrash(),
      timeOfCreation: fingerprint.timeOfCreation,
      cellsIncludingPosition: fingerprint.cellsIncludingPosition
          .map((c) => CellDto.fromDomain(c))
          .asList(),
      currentSettings: SettingsDto.fromDomain(fingerprint.currentSettings),
      locationDistances: fingerprint.locationDistances
          .map((ld) => LocationDistanceDto.fromDomain(ld))
          .asList(),
      receivedNetworks: fingerprint.receivedNetworks
          .asMap()
          .map((bssid, rss) => MapEntry(bssid.getOrCrash(), rss.getOrCrash())),
      calculatedPosition:
          PositionDto.fromDomain(fingerprint.calculatedPosition),
    );
  }

  factory RecalculatedFingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$RecalculatedFingerprintDtoFromJson(json);

  factory RecalculatedFingerprintDto.fromFirestore(DocumentSnapshot doc) {
    return RecalculatedFingerprintDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension RecalculatedFingerprintDtoX on RecalculatedFingerprintDto {
  RecalculatedFingerprint toDomain() {
    return RecalculatedFingerprint(
      id: UniqueId.fromFirebaseId(id),
      fingerprintBaseId: UniqueId.fromFirebaseId(fingerprintBaseId),
      projectId: UniqueId.fromFirebaseId(projectId),
      timeOfCreation: timeOfCreation,
      cellsIncludingPosition:
          cellsIncludingPosition.map((dto) => dto.toDomain()).toImmutableList(),
      currentSettings: currentSettings.toDomain(),
      locationDistances:
          locationDistances.map((dto) => dto.toDomain()).toImmutableList(),
      receivedNetworks: receivedNetworks
          .map((bssid, rss) => MapEntry<BSSID, RSS>(BSSID(bssid), RSS(rss)))
          .kt
          .toMap(),
      calculatedPosition: calculatedPosition.toDomain(),
    );
  }
}

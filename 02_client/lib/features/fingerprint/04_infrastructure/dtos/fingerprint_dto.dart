import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../../../common/04_infrastructure/dtos/locationdistance/location_distance_dto.dart';
import '../../../../common/04_infrastructure/dtos/position/position_dto.dart';
import '../../../../common/04_infrastructure/dtos/settings/settings_dto.dart';
import '../../../cell/04_infrastructure/dtos/cell_dto.dart';
import '../../03_domain/entities/fingerprint.dart';

part 'fingerprint_dto.freezed.dart';
part 'fingerprint_dto.g.dart';

@freezed
abstract class FingerprintDto with _$FingerprintDto implements IDto {
  factory FingerprintDto({
    @required String id,
    @required String projectId,
    @required DateTime timeOfCreation,
    @required SettingsDto currentSettings,
    @required List<LocationDistanceDto> locationDistances,
    @required List<CellDto> cellsIncludingPosition,
    @required Map<String, double> receivedNetworks,
    @required PositionDto calculatedPosition,
  }) = _FingerprintDto;

  factory FingerprintDto.fromDomain(Fingerprint fingerprint) {
    return FingerprintDto(
      id: fingerprint.id.getOrCrash(),
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

  factory FingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$FingerprintDtoFromJson(json);

  factory FingerprintDto.fromFirestore(DocumentSnapshot doc) {
    return FingerprintDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension FingerprintDtoX on FingerprintDto {
  Fingerprint toDomain() {
    return Fingerprint(
      id: UniqueId.fromFirebaseId(id),
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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../03_domain/entities/calibration_fingerprint.dart';

part 'calibration_fingerprint_dto.freezed.dart';
part 'calibration_fingerprint_dto.g.dart';

@freezed
abstract class CalibrationFingerprintDto with _$CalibrationFingerprintDto implements IDto {
  const factory CalibrationFingerprintDto({
    @required String id,
    @required String projectId,
    @required String calibrationPointId,
    @required DateTime timeOfCreation,
    @required Map<String, double> receivedSignals,
  }) = _CalibrationFingerprintDto;

  factory CalibrationFingerprintDto.fromDomain(
          CalibrationFingerprint calibrationFingerprint) =>
      CalibrationFingerprintDto(
        id: calibrationFingerprint.id.getOrCrash(),
        projectId: calibrationFingerprint.projectId.getOrCrash(),
        calibrationPointId:
            calibrationFingerprint.calibrationPointId.getOrCrash(),
        timeOfCreation: calibrationFingerprint.timeOfCreation,
        receivedSignals: calibrationFingerprint.receivedSignals.asMap().map(
              (bssid, rss) => MapEntry(
                bssid.getOrCrash(),
                rss.getOrCrash(),
              ),
            ),
      );

  factory CalibrationFingerprintDto.fromJson(Map<String, dynamic> json) =>
      _$CalibrationFingerprintDtoFromJson(json);

  factory CalibrationFingerprintDto.fromFirestore(DocumentSnapshot doc) {
    return CalibrationFingerprintDto.fromJson(doc.data())
        .copyWith(id: doc.id);
  }
}

extension CalibrationFingerprintDtoX on CalibrationFingerprintDto {
  CalibrationFingerprint toDomain() {
    return CalibrationFingerprint(
      id: UniqueId.fromFirebaseId(id),
      projectId: UniqueId.fromFirebaseId(projectId),
      calibrationPointId: UniqueId.fromFirebaseId(calibrationPointId),
      timeOfCreation: timeOfCreation,
      receivedSignals: receivedSignals
          .map((bssid, rss) => MapEntry<BSSID, RSS>(BSSID(bssid), RSS(rss)))
          .kt
          .toMap(),
    );
  }
}

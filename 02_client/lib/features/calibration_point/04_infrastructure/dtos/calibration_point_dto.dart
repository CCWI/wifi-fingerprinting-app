import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../../../common/04_infrastructure/dtos/position/position_dto.dart';
import '../../03_domain/entities/calibration_point.dart';

part 'calibration_point_dto.freezed.dart';
part 'calibration_point_dto.g.dart';

@freezed
abstract class CalibrationPointDto with _$CalibrationPointDto implements IDto {
  factory CalibrationPointDto({
    @required String id,
    @required String projectId,
    @required String name,
    @required Map<String, double> radioMap,
    @required PositionDto position,
  }) = _CalibrationPointDto;

  factory CalibrationPointDto.fromDomain(CalibrationPoint calibrationPoint) {
    return CalibrationPointDto(
      id: calibrationPoint.id.getOrCrash(),
      projectId: calibrationPoint.projectId.getOrCrash(),
      name: calibrationPoint.name.getOrCrash(),
      radioMap: calibrationPoint.radioMap
          .asMap()
          .map((bssid, rss) => MapEntry(bssid.getOrCrash(), rss.getOrCrash())),
      position: PositionDto.fromDomain(calibrationPoint.position),
    );
  }

  factory CalibrationPointDto.fromJson(Map<String, dynamic> json) =>
      _$CalibrationPointDtoFromJson(json);

  factory CalibrationPointDto.fromFirestore(DocumentSnapshot doc) {
    return CalibrationPointDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension CalibrationPointDtoX on CalibrationPointDto {
  CalibrationPoint toDomain() {
    return CalibrationPoint(
      id: UniqueId.fromFirebaseId(id),
      projectId: UniqueId.fromFirebaseId(projectId),
      name: Name(name),
      position: position.toDomain(),
      radioMap: radioMap
          .map((bssid, rss) => MapEntry<BSSID, RSS>(BSSID(bssid), RSS(rss)))
          .kt
          .toMap(),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../03_domain/entities/access_point.dart';

part 'access_point_dto.freezed.dart';
part 'access_point_dto.g.dart';

@freezed
abstract class AccessPointDto with _$AccessPointDto implements IDto {
  factory AccessPointDto({
    @required String id,
    @required String projectId,
    String name,
    @required String ssid,
    @required String bssid,
  }) = _AccessPointDto;

  factory AccessPointDto.fromDomain(AccessPoint accessPoint) {
    return AccessPointDto(
      id: accessPoint.id.getOrCrash(),
      projectId: accessPoint.projectId.getOrCrash(),
      name: accessPoint.name.getOrCrash(),
      ssid: accessPoint.ssid.getOrCrash(),
      bssid: accessPoint.bssid.getOrCrash(),
    );
  }

  factory AccessPointDto.fromJson(Map<String, dynamic> json) =>
      _$AccessPointDtoFromJson(json);

  factory AccessPointDto.fromFirestore(DocumentSnapshot doc) {
    return AccessPointDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension AccessPointDtoX on AccessPointDto {
  AccessPoint toDomain() {
    return AccessPoint(
      id: UniqueId.fromFirebaseId(id),
      projectId: UniqueId.fromFirebaseId(projectId),
      name: Name(name),
      ssid: SSID(ssid),
      bssid: BSSID(bssid),
    );
  }
}

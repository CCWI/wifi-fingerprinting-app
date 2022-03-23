import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';

part 'access_point.freezed.dart';

@freezed
abstract class AccessPoint with _$AccessPoint implements IEntity {
  const factory AccessPoint({
    @required UniqueId id,
    @required UniqueId projectId,
    Name name,
    @required SSID ssid,
    @required BSSID bssid,
  }) = _AccessPoint;

  factory AccessPoint.empty() => AccessPoint(
        id: UniqueId(),
        projectId: UniqueId(),
        name: Name(''),
        ssid: SSID(''),
        bssid: BSSID(''),
      );
}

extension AccessPointX on AccessPoint {
  Option<ValueFailure<dynamic>> get failureOption {
      return projectId.failureOrUnit
          .andThen(name.failureOrUnit)
          .andThen(ssid.failureOrUnit)
          .andThen(bssid.failureOrUnit)
          .fold((f) => some(f), (_) => none());
  }
}

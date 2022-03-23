import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../03_domain/entities/locationdistance/location_distance.dart';
import '../../../03_domain/value_objects/value_objects.dart';
import '../position/position_dto.dart';

part 'location_distance_dto.freezed.dart';
part 'location_distance_dto.g.dart';

@freezed
abstract class LocationDistanceDto with _$LocationDistanceDto {
  factory LocationDistanceDto({
    @required String calibrationPointId,
    @required String calibrationPointName,
    @required PositionDto calibrationPointPosition,
    @required double distance,
  }) = _LocationDistanceDto;

  factory LocationDistanceDto.fromDomain(LocationDistance locationDistance) {
    return LocationDistanceDto(
      calibrationPointId: locationDistance.calibrationPointId.getOrCrash(),
      calibrationPointName: locationDistance.calibrationPointName.getOrCrash(),
      calibrationPointPosition: PositionDto.fromDomain(locationDistance.calibrationPointPosition),
      distance: locationDistance.distance.getOrCrash(),
    );
  }

  factory LocationDistanceDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDistanceDtoFromJson(json);
}

extension LocationDistanceX on LocationDistanceDto {
  LocationDistance toDomain() {
    return LocationDistance(
      calibrationPointId: UniqueId.fromFirebaseId(calibrationPointId),
      calibrationPointName: Name(calibrationPointName),
      calibrationPointPosition: calibrationPointPosition.toDomain(),
      distance: Distance(distance),
    );
  }
}

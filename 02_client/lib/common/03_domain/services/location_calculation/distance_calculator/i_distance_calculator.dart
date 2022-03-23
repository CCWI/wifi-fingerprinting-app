import '../../../../../features/calibration_point/03_domain/entities/calibration_point.dart';
import '../../../entities/locationdistance/location_distance.dart';
import '../../../value_objects/value_objects.dart';

abstract class IDistanceCalculator {
  double calculateDistance(
      Map<BSSID, RSS> calibrationPointData, Map<BSSID, RSS> fingerprintData);
  List<LocationDistance> calculateDistances(
      List<CalibrationPoint> calibrationPoints,
      Map<BSSID, RSS> fingerprintData);
}

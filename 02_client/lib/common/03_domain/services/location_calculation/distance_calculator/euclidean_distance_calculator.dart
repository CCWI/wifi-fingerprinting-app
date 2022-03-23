import 'dart:math';

import '../../../../../features/calibration_point/03_domain/entities/calibration_point.dart';
import '../../../entities/locationdistance/location_distance.dart';
import '../../../value_objects/value_objects.dart';
import 'i_distance_calculator.dart';

class EuclideanDistanceCalculator implements IDistanceCalculator {
  @override
  double calculateDistance(
      Map<BSSID, RSS> calibrationPointData, Map<BSSID, RSS> fingerprintData) {
    double finalDistance = 0;
    double tempValueOne;
    double tempValueTwo;
    double tempDistance;

    if (calibrationPointData.length != fingerprintData.length) {
      return null;
    }

    try {
      calibrationPointData.forEach(
        (bssid, rss) {
          //value one
          if (rss.getOrCrash() == RSS.notReceived) {
            tempValueOne = 0;
          } else {
            tempValueOne = rss.getOrCrash();
          }
          //value two
          if (fingerprintData[bssid].getOrCrash() == RSS.notReceived) {
            tempValueTwo = 0;
          } else {
            tempValueTwo = fingerprintData[bssid].getOrCrash();
          }

          tempDistance = tempValueOne - tempValueTwo;
          tempDistance *= tempDistance;

          finalDistance += tempDistance;
        },
      );
    } catch (_) {
      return double.negativeInfinity;
    }
    return sqrt(finalDistance);
  }

  @override
  List<LocationDistance> calculateDistances(
      List<CalibrationPoint> calibrationPoints,
      Map<BSSID, RSS> fingerprintData) {
    List<LocationDistance> locationDistances = new List<LocationDistance>();

    calibrationPoints.forEach((cp) {
      final radioDetails = cp.radioMap.asMap();
      final currentDistance = calculateDistance(radioDetails, fingerprintData);

      if (currentDistance == double.negativeInfinity) {
        return null;
      }

      locationDistances.add(LocationDistance(
          calibrationPointId: cp.id,
          calibrationPointName: cp.name,
          calibrationPointPosition: cp.position,
          distance: Distance(currentDistance)));
    });

    locationDistances.sort(
        (a, b) => a.distance.getOrCrash().compareTo(b.distance.getOrCrash()));

    return locationDistances;
  }
}

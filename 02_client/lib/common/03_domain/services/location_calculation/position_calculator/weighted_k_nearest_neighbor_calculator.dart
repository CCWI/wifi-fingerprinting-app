import 'package:kt_dart/kt.dart';

import '../../../entities/locationdistance/location_distance.dart';
import '../../../entities/position/position.dart';
import '../../../value_objects/value_objects.dart';
import 'i_position_calculator.dart';

class WeightedKNearestNeighborCalculator implements IPositionCalculator {
  @override
  Position calculate(List<LocationDistance> locationDistances, int k) {
    double locationWeight = .0;
    double sumWeights = .0;
    double weightedSumX = .0;
    double weightedSumY = .0;

    int floor;
    double x;
    double y;

    int kMin = k < locationDistances.length ? k : locationDistances.length;
    Map<int, int> floorVoting = Map<int, int>();

    for (int i = 0; i < kMin; i++) {
      if (locationDistances[i].distance.getOrCrash() != 0.0) {
        locationWeight = 1 / locationDistances[i].distance.getOrCrash();
      } else {
        locationWeight = 100;
      }

      try {
        x = locationDistances[i].calibrationPointPosition.x.getOrCrash();
        y = locationDistances[i].calibrationPointPosition.y.getOrCrash();
        if (floorVoting.containsKey(
            locationDistances[i].calibrationPointPosition.floor.getOrCrash())) {
          floorVoting[locationDistances[i]
              .calibrationPointPosition
              .floor
              .getOrCrash()] += 1;
        } else {
          floorVoting[locationDistances[i]
              .calibrationPointPosition
              .floor
              .getOrCrash()] = 1;
        }
      } catch (_) {
        return null;
      }

      sumWeights += locationWeight;
      weightedSumX += locationWeight * x;
      weightedSumY += locationWeight * y;
    }

    weightedSumX /= sumWeights;
    weightedSumY /= sumWeights;
    floor = _getFloorByValue(floorVoting);

    return Position(
      x: CoordinateValue(weightedSumX),
      y: CoordinateValue(weightedSumY),
      floor: FloorNumber(floor),
    );
  }

  int _getFloorByValue(Map<int, int> floorVotingMap) {
    KtMap<int, int> votingMap = floorVotingMap.kt.toMap();
    votingMap.forEach((floor, amountOfVotes) {
      if (amountOfVotes == votingMap.values.max()) {
        return floor;
      }
    });
    return 0;
  }
}

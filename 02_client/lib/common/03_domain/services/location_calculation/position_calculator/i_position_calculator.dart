import '../../../entities/locationdistance/location_distance.dart';
import '../../../entities/position/position.dart';

abstract class IPositionCalculator {
  Position calculate(List<LocationDistance> locationDistances, int k);
}

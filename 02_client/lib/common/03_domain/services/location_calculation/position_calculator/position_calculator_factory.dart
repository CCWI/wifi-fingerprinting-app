import '../../../entities/settings/algorithm.dart';
import 'i_position_calculator.dart';
import 'k_nearest_neighbor_calculator.dart';
import 'weighted_k_nearest_neighbor_calculator.dart';

class PositionCalculatorFactory {
  static IPositionCalculator getPositioningAlgorithm(Algorithm algorithm) {
    switch (algorithm) {
      case Algorithm.kNN:
        return KNearestNeighborCalculator();
      case Algorithm.wKNN:
        return WeightedKNearestNeighborCalculator();
      default:
        return WeightedKNearestNeighborCalculator();
    }
  }
}

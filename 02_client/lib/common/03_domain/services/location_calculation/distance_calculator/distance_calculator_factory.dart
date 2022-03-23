import '../../../entities/settings/distance_metrics.dart';
import 'euclidean_distance_calculator.dart';
import 'i_distance_calculator.dart';

class DistanceCalculatorFactory {
  static IDistanceCalculator getDistanceMetric(DistanceMetric metric) {
    switch (metric) {
      case DistanceMetric.eculidean:
      default:
        return EuclideanDistanceCalculator();
    }
  }
}

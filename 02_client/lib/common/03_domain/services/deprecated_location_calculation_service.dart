// import 'dart:math';

// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/kt.dart';
// import 'package:meta/meta.dart';
// import 'package:vector_math/vector_math.dart';

// import '../../../features/access_point/03_domain/entities/access_point.dart';
// import '../../../features/access_point/03_domain/repositories/i_access_point_repository.dart';
// import '../../../features/calibration_point/03_domain/entities/calibration_point.dart';
// import '../../../features/calibration_point/03_domain/repositories/i_calibration_point_repository.dart';
// import '../../../features/cell/03_domain/entities/cell.dart';
// import '../../../features/cell/03_domain/repositories/i_cell_repository.dart';
// import '../../../features/fingerprint/03_domain/entities/fingerprint.dart';
// import '../../../features/project/03_domain/repositories/i_project_repository.dart';
// import '../../05_utils/constants.dart';
// import '../../05_utils/line.dart';
// import '../entities/locationdistance/location_distance.dart';
// import '../entities/position/position.dart';
// import '../entities/settings/algorithm.dart';
// import '../entities/settings/settings.dart';
// import '../entities/signal/signal.dart';
// import '../value_objects/value_objects.dart';
// import 'location_calculation/i_location_calculation_service.dart';

// @Injectable(
//     as: ILocationCalculationService,
//     env: [Environment.prod, Constants.local_dev])
// class LocationCalculationService implements ILocationCalculationService {
//   final ICalibrationPointRepository _cpRepository;
//   final IAccessPointRepository _apRepository;
//   final ICellRepository _cRepository;
//   final IProjectRepository _pRepository;

//   LocationCalculationService({
//     @required ICalibrationPointRepository cpRepository,
//     @required IAccessPointRepository apRepository,
//     @required ICellRepository cRepository,
//     @required IProjectRepository pRepository,
//   })  : assert(cpRepository != null),
//         assert(apRepository != null),
//         assert(cRepository != null),
//         assert(pRepository != null),
//         _cpRepository = cpRepository,
//         _apRepository = apRepository,
//         _cRepository = cRepository,
//         _pRepository = pRepository;

//   @override
//   Future<Fingerprint> calculateLocation(KtList<Signal> scannedSignals,
//       UniqueId projectId, Settings settings) async {
//     KtMutableList<AccessPoint> accessPoints;
//     KtMap<BSSID, RSS> initialObservedRSSValues = _signalsToMap(scannedSignals);
//     KtMutableMap<BSSID, RSS> observedRSSValues =
//         KtMutableMap<BSSID, RSS>.empty();
//     final failureOrAccessPoints =
//         await _apRepository.readAllFromProject(projectId);

//     accessPoints = failureOrAccessPoints.fold(
//       (f) => null,
//       (accessPoints) => accessPoints.toMutableList(),
//     );

//     int notReceivedCounter = 0;
//     accessPoints.forEach((accessPoint) {
//       if (!initialObservedRSSValues.containsKey(accessPoint.bssid)) {
//         observedRSSValues[accessPoint.bssid] = RSS(RSS.notReceived);
//         notReceivedCounter++;
//       } else {
//         observedRSSValues[accessPoint.bssid] =
//             initialObservedRSSValues[accessPoint.bssid];
//       }
//     });

//     if (notReceivedCounter == accessPoints.size) {
//       return null;
//     }

//     return await _kNN_WKNN_Algorithm(
//         projectId, observedRSSValues.toMap(), settings);
//   }

//   Future<Fingerprint> _kNN_WKNN_Algorithm(UniqueId projectId,
//       KtMap<BSSID, RSS> observedRSSValues, Settings settings) async {
//     Position positionResult;
//     KtList<CalibrationPoint> calibrationPoints;
//     KtMutableList<LocationDistance> locationDistanceResults =
//         KtMutableList<LocationDistance>.empty();
//     final failureOrCalibrationPoints =
//         await _cpRepository.readAllFromProject(projectId);

//     calibrationPoints = failureOrCalibrationPoints.fold(
//       (f) => null,
//       (calibrationPoints) => calibrationPoints,
//     );

//     calibrationPoints.forEach((calibrationPoint) {
//       final rssValues = calibrationPoint.radioMap;
//       final currentDistance =
//           _calculateEuclideanDistance(rssValues, observedRSSValues);

//       if (currentDistance == double.negativeInfinity) {
//         return null;
//       }

//       locationDistanceResults.addAt(
//           0,
//           LocationDistance(
//             calibrationPointId: calibrationPoint.id,
//             calibrationPointName: calibrationPoint.name,
//             calibrationPointPosition: calibrationPoint.position,
//             distance: Distance(currentDistance),
//           ));
//     });

//     locationDistanceResults.sortWith(
//         (a, b) => a.distance.getOrCrash().compareTo(b.distance.getOrCrash()));

//     switch (settings.locationAlgorithm) {
//       case Algorithm.wKNN:
//         positionResult = _calculateWeightedAverageKDistanceLocations(
//             locationDistanceResults, settings.knnKValue.getOrCrash());
//         break;
//       case Algorithm.kNN:
//         positionResult = _calculateAverageKDistanceLocations(
//             locationDistanceResults, settings.knnKValue.getOrCrash());
//         break;
//       default:
//     }

//     return Fingerprint(
//       id: UniqueId(),
//       projectId: projectId,
//       receivedNetworks: observedRSSValues,
//       currentSettings: settings,
//       cellsIncludingPosition:
//           await _getCellsThatIncludePosition(positionResult, projectId),
//       locationDistances: locationDistanceResults,
//       timeOfCreation: DateTime.now(),
//       calculatedPosition: positionResult,
//     );
//   }

//   Position _calculateAverageKDistanceLocations(
//       KtList<LocationDistance> locationDistances, int k) {
//     double sumX = .0;
//     double sumY = .0;
//     int floor;

//     double x;
//     double y;

//     int kMin = k < locationDistances.size ? k : locationDistances.size;
//     KtMutableMap<int, int> floorVoting = KtMutableMap<int, int>.empty();

//     for (int i = 0; i < kMin; i++) {
//       try {
//         x = locationDistances[i].calibrationPointPosition.x.getOrCrash();
//         y = locationDistances[i].calibrationPointPosition.y.getOrCrash();
//         if (floorVoting.containsKey(
//             locationDistances[i].calibrationPointPosition.floor.getOrCrash())) {
//           floorVoting[locationDistances[i]
//               .calibrationPointPosition
//               .floor
//               .getOrCrash()] += 1;
//         } else {
//           floorVoting[locationDistances[i]
//               .calibrationPointPosition
//               .floor
//               .getOrCrash()] = 1;
//         }
//       } catch (_) {
//         return null;
//       }
//       sumX += x;
//       sumY += y;
//     }

//     sumX /= kMin;
//     sumY /= kMin;
//     floor = _getFloorByValue(floorVoting);

//     return Position(
//       x: CoordinateValue(sumX),
//       y: CoordinateValue(sumY),
//       floor: FloorNumber(floor),
//     );
//   }

//   Position _calculateWeightedAverageKDistanceLocations(
//       KtList<LocationDistance> locationDistances, int k) {
//     double locationWeight = .0;
//     double sumWeights = .0;
//     double weightedSumX = .0;
//     double weightedSumY = .0;

//     int floor;
//     double x;
//     double y;

//     int kMin = k < locationDistances.size ? k : locationDistances.size;
//     KtMutableMap<int, int> floorVoting = KtMutableMap<int, int>.empty();

//     for (int i = 0; i < kMin; i++) {
//       if (locationDistances[i].distance.getOrCrash() != 0.0) {
//         locationWeight = 1 / locationDistances[i].distance.getOrCrash();
//       } else {
//         locationWeight = 100;
//       }

//       try {
//         x = locationDistances[i].calibrationPointPosition.x.getOrCrash();
//         y = locationDistances[i].calibrationPointPosition.y.getOrCrash();
//         if (floorVoting.containsKey(
//             locationDistances[i].calibrationPointPosition.floor.getOrCrash())) {
//           floorVoting[locationDistances[i]
//               .calibrationPointPosition
//               .floor
//               .getOrCrash()] += 1;
//         } else {
//           floorVoting[locationDistances[i]
//               .calibrationPointPosition
//               .floor
//               .getOrCrash()] = 1;
//         }
//       } catch (_) {
//         return null;
//       }

//       sumWeights += locationWeight;
//       weightedSumX += locationWeight * x;
//       weightedSumY += locationWeight * y;
//     }

//     weightedSumX /= sumWeights;
//     weightedSumY /= sumWeights;
//     floor = _getFloorByValue(floorVoting);

//     return Position(
//       floor: FloorNumber(floor),
//       x: CoordinateValue(weightedSumX),
//       y: CoordinateValue(weightedSumY),
//     );
//   }

//   double _calculateEuclideanDistance(
//       KtMap<BSSID, RSS> rssValues, KtMap<BSSID, RSS> observedRSSValues) {
//     double finalDistance = 0;
//     double tempValueOne;
//     double tempValueTwo;
//     double tempDistance;

//     if (rssValues.size != observedRSSValues.size) {
//       return null;
//     }

//     try {
//       rssValues.forEach(
//         (bssid, rss) {
//           //value one
//           if (rss.getOrCrash() == RSS.notReceived) {
//             tempValueOne = 0;
//           } else {
//             tempValueOne = rss.getOrCrash();
//           }
//           //value two
//           if (observedRSSValues[bssid].getOrCrash() == RSS.notReceived) {
//             tempValueTwo = 0;
//           } else {
//             tempValueTwo = observedRSSValues[bssid].getOrCrash();
//           }

//           tempDistance = tempValueOne - tempValueTwo;
//           tempDistance *= tempDistance;

//           finalDistance += tempDistance;
//         },
//       );
//     } catch (_) {
//       return double.negativeInfinity;
//     }
//     return sqrt(finalDistance);
//   }

//   KtMap<BSSID, RSS> _signalsToMap(KtList<Signal> signals) {
//     KtMutableMap<BSSID, RSS> mapToReturn = KtMutableMap<BSSID, RSS>.empty();

//     signals.forEach((signal) {
//       mapToReturn[signal.bssid] = signal.rss;
//     });

//     return mapToReturn.toMap();
//   }

//   int _getFloorByValue(KtMutableMap<int, int> floorVotingMap) {
//     floorVotingMap.forEach((floor, amountOfVotes) {
//       if (amountOfVotes == floorVotingMap.values.max()) {
//         return floor;
//       }
//     });
//     return 0;
//   }

//   Future<KtList<Cell>> _getCellsThatIncludePosition(
//       Position position, UniqueId projectId) async {
//     KtMutableList<Cell> cellsToReturn = KtMutableList.empty();
//     final pointVector =
//         Vector2(position.x.getOrCrash(), position.y.getOrCrash());
//     double cartesianWidth;

//     final failureOrCells = await _cRepository.readAllFromProject(projectId);
//     final failureOrCartesianDimensions =
//         await _pRepository.readCartesianDimensionsById(projectId);

//     failureOrCartesianDimensions.fold((_) {
//       cartesianWidth = 5000;
//     }, (cartesianDimensions) {
//       cartesianWidth = cartesianDimensions.dx + 10;
//     });

//     failureOrCells.fold((l) => null, (cells) {
//       cells.forEach((cell) {
//         final lines = Line.cellIntoLines(cell);
//         final pointLine = Line.originDirection(pointVector,
//             Vector2(pointVector.x + cartesianWidth, pointVector.y));

//         if (_getNumberOfIntersections(pointLine, lines) % 2 == 1) {
//           cellsToReturn.add(cell);
//         }
//       });
//     });

//     return cellsToReturn.toList();
//   }

//   int _getNumberOfIntersections(Line line, List<Line> linesToInterSectWith) {
//     int numberOfIntersections = 0;
//     linesToInterSectWith.forEach((lineToIntersect) {
//       if (line.intersects(lineToIntersect)) numberOfIntersections++;
//     });
//     return numberOfIntersections;
//   }
// }

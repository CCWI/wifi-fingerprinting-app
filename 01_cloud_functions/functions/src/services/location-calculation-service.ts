import { ILocationCalculationService } from "./i-location-calculation-service";
import { IFailable, failableAsync, FailablePromise, failure, failable, success, } from "ts-failable";
import { Fingerprint } from "../models/fingerprint";
import { Signal } from "../models/signal";
import { AccessPoint } from "../models/access-point";
import { getRepository } from "fireorm";
import { CalculatePositionRequest } from "../models/calculate-position-request";
import { CalibrationPoint } from "../models/calibration-point";
import { rssNotReceived } from "..";
import { LocationDistance } from "../models/location-distance";
import { Settings } from "../models/settings";
import { Algorithm } from "../models/algorithm";
import { Position } from "../models/position";
import { LocationCalculationError } from "../exceptions/calculate-position-exceptions";
import { Cell } from "../models/cell";
import { Project } from "../models/project";
import { Line } from "../models/line";
import { v1 as uuid } from "uuid";
import { IMappingService } from "./i-mapping-service";

export class LocationCalculationService implements ILocationCalculationService {
  private mappingService: IMappingService;

  constructor(mappingService: IMappingService) {
    this.mappingService = mappingService;
  }

  public async calculateLocation(
    calculatePositionRequest: CalculatePositionRequest
  ): FailablePromise<Fingerprint, LocationCalculationError> {
    const projectId = calculatePositionRequest.projectId;
    const settings = calculatePositionRequest.settings;
    let fingerprintToReturn: Fingerprint | null = null;
    let possibleError: LocationCalculationError | null = null;

    console.log('Getting access points from project..');
    const failureOrAccessPoints = await this.getAccessPointsFromProject(
      projectId
    );

    await failureOrAccessPoints.match({
      failure: async (accessPointsNotReceivedError) => {
        possibleError = accessPointsNotReceivedError;
      },
      success: async (accessPoints) => {
        //check how many access points were received
        const initiallyReceivedRSSValues = this.signalsToMap(
          calculatePositionRequest.receivedSignals
        );
        const receivedDatabaseRSSValues = new Map<string, number>();
        let notReceivedCounter: number = 0;

        accessPoints.forEach((accessPoint) => {
          if (!initiallyReceivedRSSValues.has(accessPoint.bssid)) {
            notReceivedCounter++;
            receivedDatabaseRSSValues.set(
              accessPoint.bssid,
              rssNotReceived
            );
          } else {
            receivedDatabaseRSSValues.set(
              accessPoint.bssid,
              initiallyReceivedRSSValues.get(accessPoint.bssid)!
            );
          }
        });

        if (notReceivedCounter === accessPoints.length) {
          console.error('No access point in database matches the received signals');
          possibleError = {
            type: "NO_SIGNAL_DATABASE_MATCH",
            data: "Signals don't match any bssid's in database",
          };
        } else {
          const failureOrFingerprint = await this.kNN_WKNN_Algorithm(
            receivedDatabaseRSSValues,
            projectId,
            settings
          );

          failureOrFingerprint.match({
            failure: (algorithmError) => {
              possibleError = algorithmError;
            },
            success: (fingerprint) => {
              fingerprintToReturn = fingerprint;
            },
          });
        }
      },
    });

    if (possibleError !== null) {
      return failure(possibleError);
    } else {
      return success(fingerprintToReturn!);
    }
  }

  private async getAccessPointsFromProject(
    projectId: string
  ): FailablePromise<AccessPoint[], LocationCalculationError> {
    return failableAsync<AccessPoint[], LocationCalculationError>(
      async ({ success, failure }) => {
        try {
          const apRepository = getRepository(AccessPoint);
          const accessPoints: AccessPoint[] = await apRepository
            .whereEqualTo("projectId", projectId)
            .find();
          return success(accessPoints);
        } catch (e) {
          console.error(`Failed to get access points from project: ${e.message}`);
          return failure({
            type: "ACCESS_POINTS_NOT_RECEIVED",
            data: "Could not receive access points",
          });
        }
      }
    );
  }

  private async kNN_WKNN_Algorithm(
    receivedRSSValues: Map<string, number>,
    projectId: string,
    settings: Settings
  ): FailablePromise<Fingerprint, LocationCalculationError> {
    let possibleError: LocationCalculationError | null = null;
    let fingerprintToReturn: Fingerprint | null = null;
    const locationDistanceResults: LocationDistance[] = [];
    console.log('Getting calibration points from database..');
    const failureOrCalibrationPoints = await this.getCalibrationPointsFromProject(
      projectId
    );

    await failureOrCalibrationPoints.match({
      failure: async (calibrationPointsNotReceivedError) => {
        possibleError = calibrationPointsNotReceivedError;
      },
      success: async (calibrationPoints) => {
        calibrationPoints.forEach((calibrationPoint) => {          
          const radioMap: Map<string, number> = this.mappingService.plainObjectSignalsToMap(calibrationPoint.radioMap);

          const currentDistance = this.calculateEuclideanDistance(
            radioMap,
            receivedRSSValues
          );

          if (currentDistance === Number.NEGATIVE_INFINITY) {
            possibleError = {
              type: "EUCLIDEAN_DISTANCE_FAILURE",
              data: "Failed to calculate euclidean distance",
            };
            return;
          }

          const locationDistanceToAdd = new LocationDistance();
          locationDistanceToAdd.calibrationPointId = calibrationPoint.id;
          locationDistanceToAdd.calibrationPointName = calibrationPoint.name;
          locationDistanceToAdd.calibrationPointPosition =
            calibrationPoint.position;
          locationDistanceToAdd.distance = currentDistance;

          locationDistanceResults.unshift(locationDistanceToAdd);
        });

        const sortedLocationDistances = locationDistanceResults.sort(
          (d1, d2) => d1.distance - d2.distance
        );

        let failureOrPosition: IFailable<Position, LocationCalculationError>;

        switch (settings.locationAlgorithm) {
          case Algorithm.wKNN:
            failureOrPosition = this.calculateAverageKDistanceLocations(
              sortedLocationDistances,
              settings.knnKValue
            );
            break;
          default:
          case Algorithm.kNN:
            failureOrPosition = this.calculateWeightedAverageKDistanceLocations(
              sortedLocationDistances,
              settings.knnKValue
            );
            break;
        }

        await failureOrPosition.match({
          failure: async (calculateDistanceLocationsError) => {
            possibleError = calculateDistanceLocationsError;
          },
          success: async (calculatedPosition) => {
            const failureOrIncludedCells = await this.getCellsThatIncludePosition(
              calculatedPosition,
              projectId
            );

            failureOrIncludedCells.match({
              failure: (getIncludedCellsError) => {
                possibleError = getIncludedCellsError;
              },
              success: (includedCells) => {
                const fingerprint: Fingerprint = new Fingerprint();

                fingerprint.id = uuid();
                fingerprint.projectId = projectId;
                fingerprint.calculatedPosition = calculatedPosition;
                fingerprint.locationDistances = sortedLocationDistances;
                fingerprint.receivedNetworks = receivedRSSValues;
                fingerprint.currentSettings = settings;
                fingerprint.cellsIncludingPosition = includedCells;
                fingerprint.timeOfCreation = new Date().toISOString();

                fingerprintToReturn = fingerprint;
              },
            });
          },
        });
      },
    });

    if (possibleError !== null) {
      return failure(possibleError);
    } else {
      return success(fingerprintToReturn!);
    }
  }

  private async getCalibrationPointsFromProject(
    projectId: string
  ): FailablePromise<CalibrationPoint[], LocationCalculationError> {
    return failableAsync<CalibrationPoint[], LocationCalculationError>(
      async ({ success, failure }) => {
        try {
          const cpRepository = getRepository(CalibrationPoint);
          const calibrationPoints: CalibrationPoint[] = await cpRepository
            .whereEqualTo("projectId", projectId)
            .find();
          return success(calibrationPoints);
        } catch (e) {
          console.log(`Failed to get calibration points from database: ${e.message}`);
          return failure({
            type: "CALIBRATION_POINTS_NOT_RECEIVED",
            data: "Could not receive any calibration points",
          });
        }
      }
    );
  }

  private async getCellsFromProject(
    projectId: string
  ): FailablePromise<Cell[], LocationCalculationError> {
    return failableAsync<Cell[], LocationCalculationError>(
      async ({ success, failure }) => {
        try {
          const cRepository = getRepository(Cell);
          const cells: Cell[] = await cRepository
            .whereEqualTo("projectId", projectId)
            .find();
          return success(cells);
        } catch (e) {
          return failure({
            type: "CELLS_NOT_RECEIVED",
            data: "Could not receive any cells",
          });
        }
      }
    );
  }

  private async getCartesianDimensionsFromProject(
    projectId: string
  ): FailablePromise<[number, number], LocationCalculationError> {
    return failableAsync<[number, number], LocationCalculationError>(
      async ({ success, failure }) => {
        try {
          const pRepository = getRepository(Project);
          const project = await pRepository
            .whereEqualTo("id", projectId)
            .findOne();
          return success([project!.xLength, project!.yLength]);
        } catch (e) {
          return failure({
            type: "CARTESIAN_DIMENSIONS_NOT_RECEIVED",
            data: "Could not receive cartesian dimensions from project",
          });
        }
      }
    );
  }

  private async getCellsThatIncludePosition(
    position: Position,
    projectId: string
  ): FailablePromise<Cell[], LocationCalculationError> {
    return failableAsync<Cell[], LocationCalculationError>(
      async ({ success, failure }) => {
        const cellsToReturn: Cell[] = [];
        let possibleError: LocationCalculationError | null = null;
        let cartesianWidth: number;
        const pointVector: [number, number] = [position.x, position.y];

        const failureOrCartesianDimensions = await this.getCartesianDimensionsFromProject(
          projectId
        );

        await failureOrCartesianDimensions.match({
          failure: async (cartesianDimensionsNotReceived) => {
            possibleError = cartesianDimensionsNotReceived;
          },
          success: async (cartesianDimensions) => {
            cartesianWidth = cartesianDimensions[0] + 10;

            const failureOrCells = await this.getCellsFromProject(projectId);

            failureOrCells.match({
              failure: (cellsNotReceivedError) => {
                possibleError = cellsNotReceivedError;
              },
              success: (cells) => {
                cells.forEach((cell) => {
                  const lines: Line[] = Line.cellIntoLines(cell);
                  const pointLine: Line = new Line(pointVector, [
                    pointVector[0] + cartesianWidth,
                    pointVector[1],
                  ]);

                  if (
                    this.getNumberOfIntersections(pointLine, lines) % 2 ===
                    1
                  ) {
                    cellsToReturn.push(cell);
                  }
                });
              },
            });
          },
        });

        if (possibleError !== null) {
          return failure(possibleError);
        } else {
          return success(cellsToReturn);
        }
      }
    );
  }

  private calculateEuclideanDistance(
    radioMapValues: Map<string, number>,
    receivedRSSValues: Map<string, number>
  ): number {
    let finalDistance: number = 0;
    let tempValueOne: number;
    let tempValueTwo: number;
    let tempDistance: number;

    if (radioMapValues.size !== receivedRSSValues.size) {
      return Number.NEGATIVE_INFINITY;
    }

    try {
      radioMapValues.forEach((rss, bssid) => {
        //value one
        if (rss === rssNotReceived) {
          tempValueOne = 0.0;
        } else {
          tempValueOne = rss;
        }

        //value two
        if (receivedRSSValues.get(bssid)! === rssNotReceived) {
          tempValueTwo = 0.0;
        } else {
          tempValueTwo = receivedRSSValues.get(bssid)!;
        }

        tempDistance = tempValueOne - tempValueTwo;
        tempDistance *= tempDistance;

        finalDistance += tempDistance;
      });
    } catch (e) {
      return Number.NEGATIVE_INFINITY;
    }

    return finalDistance * finalDistance;
  }

  private calculateAverageKDistanceLocations(
    locationDistances: LocationDistance[],
    k: number
  ): IFailable<Position, LocationCalculationError> {
    return failable<Position, LocationCalculationError>(
      ({ success, failure }) => {
        try {
          let sumX: number = 0.0;
          let sumY: number = 0.0;
          let floor: number;

          let x: number = 0.0;
          let y: number = 0.0;

          const kMin: number =
            k < locationDistances.length ? k : locationDistances.length;
          const floorVoting: Map<number, number> = new Map<number, number>();

          for (let i: number = 0; i < kMin; i++) {
            const locationDistanceCaliPointPos =
              locationDistances[i].calibrationPointPosition;

            x = locationDistanceCaliPointPos.x;
            y = locationDistanceCaliPointPos.y;

            if (floorVoting.has(locationDistanceCaliPointPos.floor)) {
              const oldValue = floorVoting.get(
                locationDistanceCaliPointPos.floor
              )!;
              floorVoting.set(locationDistanceCaliPointPos.floor, oldValue + 1);
            } else {
              floorVoting.set(locationDistanceCaliPointPos.floor, 1);
            }

            sumX += x;
            sumY += y;
          }

          sumX /= kMin;
          sumY /= kMin;
          floor = this.getFloorByValue(floorVoting);

          const positionToReturn = new Position();
          positionToReturn.x = sumX;
          positionToReturn.y = sumY;
          positionToReturn.floor = floor;

          return success(positionToReturn);
        } catch (e) {
          return failure({
            type: "CALCULATE_DISTANCE_LOCATIONS_FAILED",
            data: "Could not calculate distance locations",
            algorithm: <number>Algorithm.kNN,
          });
        }
      }
    );
  }

  private calculateWeightedAverageKDistanceLocations(
    locationDistances: LocationDistance[],
    k: number
  ): IFailable<Position, LocationCalculationError> {
    return failable<Position, LocationCalculationError>(
      ({ success, failure }) => {
        try {
          let locationWeight: number = 0.0;
          let sumWeights = 0.0;
          let weightedSumX = 0.0;
          let weightedSumY = 0.0;

          let floor: number;
          let x: number = 0.0;
          let y: number = 0.0;

          const kMin: number =
            k < locationDistances.length ? k : locationDistances.length;
          const floorVoting: Map<number, number> = new Map<number, number>();

          for (let i = 0; i < kMin; i++) {
            if (locationDistances[i].distance !== 0.0) {
              locationWeight = 1 / locationDistances[i].distance;
            } else {
              locationWeight = 100;
            }

            const locationDistanceCaliPointPos =
              locationDistances[i].calibrationPointPosition;

            x = locationDistanceCaliPointPos.x;
            y = locationDistanceCaliPointPos.y;

            if (floorVoting.has(locationDistanceCaliPointPos.floor)) {
              const oldValue = floorVoting.get(
                locationDistanceCaliPointPos.floor
              )!;
              floorVoting.set(locationDistanceCaliPointPos.floor, oldValue + 1);
            } else {
              floorVoting.set(locationDistanceCaliPointPos.floor, 1);
            }

            sumWeights += locationWeight;
            weightedSumX += locationWeight * x;
            weightedSumY += locationWeight * y;
          }

          weightedSumX /= sumWeights;
          weightedSumY /= sumWeights;
          floor = this.getFloorByValue(floorVoting);

          const positionToReturn = new Position();
          positionToReturn.x = weightedSumX;
          positionToReturn.y = weightedSumY;
          positionToReturn.floor = floor;

          return success(positionToReturn);
        } catch (e) {
          return failure({
            type: "CALCULATE_DISTANCE_LOCATIONS_FAILED",
            data: "Could not calculate distance locations",
            algorithm: <number>Algorithm.wKNN,
          });
        }
      }
    );
  }

  private getNumberOfIntersections(
    line: Line,
    linesToIntersectWith: Line[]
  ): number {
    let numberOfIntersections: number = 0;
    linesToIntersectWith.forEach((lineToIntersectWith) => {
      if (line.intersects(lineToIntersectWith)) {
        numberOfIntersections++;
      }
    });
    return numberOfIntersections;
  }

  private getFloorByValue(floorVotingMap: Map<number, number>): number {
    let floorWithHighestVote: number = Number.NEGATIVE_INFINITY;

    floorVotingMap.forEach((voteCount, floor) => {
      let tempVoteCount: number = -1;

      if (tempVoteCount === -1 || tempVoteCount < voteCount) {
        tempVoteCount = voteCount;
        floorWithHighestVote = floor;
      }
    });

    return floorWithHighestVote;
  }

  private signalsToMap(receivedSignals: Signal[]): Map<string, number> {
    const rssValueMap: Map<string, number> = new Map<string, number>();
    receivedSignals.forEach((signal) =>
      rssValueMap.set(signal.bssid, signal.rss)
    );

    return rssValueMap;
  }
}

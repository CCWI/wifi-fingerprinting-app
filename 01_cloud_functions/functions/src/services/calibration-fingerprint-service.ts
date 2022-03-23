import { ICalibrationFingerprintService } from "./i-calibration-fingerprint-service";
import { failableAsync, FailablePromise, failure, success } from "ts-failable";
import { CreateCalibrationFingerprintRequest } from "../models/create-calibration-fingerprint-request";
import { IMappingService } from "./i-mapping-service";
import { AccessPoint } from "../models/access-point";
import { runTransaction, getRepository } from "fireorm";
import { CalibrationFingerprint } from "../models/calibration-fingerprint";
import { CalibrationPoint } from "../models/calibration-point";
import { rssNotReceived } from "..";
import { CalibrationFingerprintFirebase } from "../models/calibration-fingerprint-firebase";

export class CalibrationFingerprintService
  implements ICalibrationFingerprintService {
  private mappingService: IMappingService;

  constructor(mappingService: IMappingService) {
    this.mappingService = mappingService;
  }

  public async createCalibrationFingerprintFromRequest(
    creationRequest: CreateCalibrationFingerprintRequest
  ): FailablePromise<void, CalibrationFingerprintError> {
    const projectId: string = creationRequest.projectId;
    let possibleError: CalibrationFingerprintError | null = null;

    //received signals to access points
    console.log('Convert received signals to access points..');
    const accessPointsToBeCreated: AccessPoint[] = this.mappingService.signalsToAccessPoints(
      creationRequest.receivedSignals,
      projectId
    );

    //add non existing access points to database
    console.log('Add non existing access points to the database..')
    const failureOrSuccess = await this.createNonExistingAccessPoints(
      accessPointsToBeCreated,
      projectId
    );

    await failureOrSuccess.match({
      failure: async (updateAccessPointsFailedError) => {
        console.error('Failed to add non-existing access points to database');
        possibleError = updateAccessPointsFailedError;
      },
      success: async (_) => {
        //create calibration fingerprint
        console.log('Creating calibration fingerprint..');
        const calibrationFingerprint = CalibrationFingerprint.fromRequest(creationRequest);

        //add it to database
        console.log('Adding calibration fingerprint to database..');
        const failureOrCalibrationFingerprintCreated = await this.createCalibrationFingerprint(
          calibrationFingerprint
        );

        await failureOrCalibrationFingerprintCreated.match({
          failure: async (createCalibrationFingerprintError) => {
            possibleError = createCalibrationFingerprintError;
          },
          success: async (_) => {
            //update entire radio map
            console.log('Updating radio map..')
            const failureOrRadioMapUpdated = await this.updateRadioMap(
              projectId
            );

            await failureOrRadioMapUpdated.match({
              failure: async (updateRadioMapFailure) => {
                console.error('Failed to update radio map');
                possibleError = updateRadioMapFailure;
              },
              success: async (_) => { },
            });
          },
        });
      },
    });

    if (possibleError !== null) {
      return failure(possibleError);
    }

    //success does not have an optional parameter that's why we put in undefined
    return success(undefined);
  }

  private async createNonExistingAccessPoints(
    accessPoints: AccessPoint[],
    projectId: string
  ): FailablePromise<void, UPDATE_ACCESS_POINTS_FAILED> {
    return failableAsync<void, UPDATE_ACCESS_POINTS_FAILED>(
      async ({ success, failure }) => {
        try {
          await runTransaction(async (tran) => {
            const apRepository = tran.getRepository(AccessPoint);

            const accessPointsInDatabase: AccessPoint[] = await apRepository
              .whereEqualTo("projectId", projectId)
              .find();

            const accessPointsInDatabaseBSSIDs = accessPointsInDatabase.map(
              (ap) => ap.bssid
            );

            const newAccessPoints: AccessPoint[] = accessPoints.filter((ap) =>
              !accessPointsInDatabaseBSSIDs.includes(ap.bssid)
            );

            const creationPromises = newAccessPoints.map((ap) =>
              apRepository.create(ap)
            );

            await Promise.all(creationPromises);
          });

          return success();
        } catch (e) {
          return failure({
            type: "UPDATE_ACCESS_POINTS_FAILED",
            data: "Saving new access points failed.",
          });
        }
      }
    );
  }

  private async createCalibrationFingerprint(
    calibrationFingerprint: CalibrationFingerprint
  ): FailablePromise<void, CREATE_CALIBRATION_FINGERPRINT_FAILURE> {
    return failableAsync<void, CREATE_CALIBRATION_FINGERPRINT_FAILURE>(
      async ({ success, failure }) => {
        //convert into firebase readable object
        const calibrationFingerprintFirebase = calibrationFingerprint.toFirebaseObj();

        try {
          const cfRepository = getRepository(CalibrationFingerprintFirebase);
          await cfRepository.create(calibrationFingerprintFirebase);
          return success();
        } catch (e) {
          console.error(`Failed to add calibration fingerprint to database: ${e.message}`);
          return failure({
            type: "CREATE_CALIBRATION_FINGERPRINT_FAILURE",
            data: "Failed to create calibration fingerprint",
          });
        }
      }
    );
  }

  private async updateRadioMap(
    projectId: string
  ): FailablePromise<void, UPDATE_RADIO_MAP_FAILURE> {
    return failableAsync<void, UPDATE_RADIO_MAP_FAILURE>(
      async ({ success, failure }) => {
        try {
          await runTransaction(async (tran) => {
            //read operations
            console.log('[Update RadioMap] Reading access points, calibration points and calibration fingerprints..');
            const apRepository = getRepository(AccessPoint);
            const cpRepository = tran.getRepository(CalibrationPoint);
            const cfRepository = tran.getRepository(CalibrationFingerprint);

            const accessPoints = await apRepository
              .whereEqualTo("projectId", projectId)
              .find();
            const calibrationPoints = await cpRepository
              .whereEqualTo("projectId", projectId)
              .find();
            const calibrationFingerprints = await cfRepository
              .whereEqualTo("projectId", projectId)
              .find();

            //data manipulation
            console.log('[Update RadioMap] Manipulating data..');
            const accessPointBSSIDs = accessPoints.map((ap) => ap.bssid);
            const updatedCalibrationFingerprints = this.updateCalibrationFingerprints(
              calibrationFingerprints,
              accessPointBSSIDs
            );
            const updatedCalibrationPoints = this.updateCalibrationPoints(
              calibrationPoints,
              updatedCalibrationFingerprints
            );

            //write operations
            console.log('[Update RadioMap] Writing calibration points and calibration fingerprints..');
            //doing that weird js/ts beahviour again
            this.cfSignalMapsToPlainObjects(updatedCalibrationFingerprints);
            const cfUpdatePromises = updatedCalibrationFingerprints.map((cf) =>
              cfRepository.update(cf)
            );
            this.cpSignalMapsToPlainObjects(updatedCalibrationPoints);
            const cpUpdatePromises = updatedCalibrationPoints.map((cp) =>
              cpRepository.update(cp)
            );
            await Promise.all(cfUpdatePromises);
            console.log('[Update RadioMap] Updated calibration fingerprints added to database.');
            await Promise.all(cpUpdatePromises);
            console.log('[Update RadioMap] Updated calibration points added to database.');
          });
          return success();
        } catch (e) {
          return failure({
            type: "UPDATE_RADIO_MAP_FAILURE",
            data: "Failed to update radio map",
          });
        }
      }
    );
  }

  private updateCalibrationFingerprints(
    calibrationFingerprints: CalibrationFingerprint[],
    bssids: string[]
  ): CalibrationFingerprint[] {
    for (const calibrationFingerprint of calibrationFingerprints) {
      //weird object to map converting again..
      calibrationFingerprint.radioMap = this.mappingService.plainObjectSignalsToMap(calibrationFingerprint.radioMap);

      //synchronizing radio data on each fingerprint
      bssids.forEach((bssid) => {
        if (!calibrationFingerprint.radioMap.has(bssid)) {
          calibrationFingerprint.radioMap.set(bssid, rssNotReceived);
        }
      });
    }
    return calibrationFingerprints;
  }
  private updateCalibrationPoints(
    calibrationPoints: CalibrationPoint[],
    calibrationFingerprints: CalibrationFingerprint[]
  ): CalibrationPoint[] {
    calibrationPoints.forEach((calibrationPoint) => {
      //weird js/ts behaviour
      calibrationPoint.radioMap = this.mappingService.plainObjectSignalsToMap(calibrationPoint.radioMap);

      const radioMapDivisor: Map<string, number> = new Map<string, number>();
      const calibrationPointId = calibrationPoint.id;

      const relatedCalibrationFingerprints = calibrationFingerprints.filter(
        (cf) => cf.calibrationPointId === calibrationPointId
      );

      if (relatedCalibrationFingerprints.length > 0) {

        relatedCalibrationFingerprints[0].radioMap.forEach((_, bssid) => {
          radioMapDivisor.set(bssid, relatedCalibrationFingerprints.length);
        });

        const updatedRadioMap: Map<string, number> = new Map<string, number>();

        relatedCalibrationFingerprints.forEach((calibrationFingerprint) => {
          const radioDetails = calibrationFingerprint.radioMap;

          radioDetails.forEach((rss, bssid) => {
            if (rss !== rssNotReceived) {
              if (updatedRadioMap.has(bssid)) {
                const oldValue = updatedRadioMap.get(bssid);
                updatedRadioMap.set(bssid, oldValue! + rss);
              } else {
                updatedRadioMap.set(bssid, rss);
              }
            } else {
              if (!updatedRadioMap.has(bssid)) {
                updatedRadioMap.set(bssid, 0.0);
              }
              const oldValue = radioMapDivisor.get(bssid);
              radioMapDivisor.set(bssid, oldValue! - 1);
            }
          });
        });

        updatedRadioMap.forEach((_, bssid) => {
          if (radioMapDivisor.get(bssid)! <= 0) {
            updatedRadioMap.set(bssid, rssNotReceived);
          } else {
            const divisor = radioMapDivisor.get(bssid);
            const cumulatedValue = updatedRadioMap.get(bssid);
            updatedRadioMap.set(bssid, cumulatedValue! / divisor!);
          }
        });

        calibrationPoint.radioMap = updatedRadioMap;
      }
    });

    return calibrationPoints;
  }

  private cfSignalMapsToPlainObjects(calibrationFingerprints: CalibrationFingerprint[]): void {
    for (const calibrationFingerprint of calibrationFingerprints) {
      calibrationFingerprint.radioMap = this.mappingService.signalsMapToPlainObject(calibrationFingerprint.radioMap);
    }
  }

  private cpSignalMapsToPlainObjects(calibrationPoints: CalibrationPoint[]): void {
    for (const calibrationPoint of calibrationPoints) {
      calibrationPoint.radioMap = this.mappingService.signalsMapToPlainObject(calibrationPoint.radioMap);
    }
  }

}

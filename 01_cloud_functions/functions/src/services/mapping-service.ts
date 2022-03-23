import { CreateCalibrationFingerprintRequest } from "../models/create-calibration-fingerprint-request";
import { IMappingService } from "./i-mapping-service";
import { IFailable, failable } from "ts-failable";
import { plainToClass } from "class-transformer";
import { AccessPoint } from "../models/access-point";
import { Signal } from "../models/signal";
import { v1 as uuid } from "uuid";
import { CalculatePositionRequest } from "../models/calculate-position-request";

export class MappingService implements IMappingService {
  requestBodyToCreateCalibrationFingerprintRequest(
    body: any
  ): IFailable<CreateCalibrationFingerprintRequest, NON_READABLE> {
    return failable<CreateCalibrationFingerprintRequest, NON_READABLE>(
      ({ success, failure }) => {
        try {
          let bodyToTransform: any = body;

          if("data" in body) {
            bodyToTransform = body.data;
          }
          
          const createCalibrationFingerprintRequest: CreateCalibrationFingerprintRequest = plainToClass(
            CreateCalibrationFingerprintRequest,
            bodyToTransform
          );
          return success(createCalibrationFingerprintRequest);
        } catch (e) {
          return failure({
            type: "NON_READABLE",
            data: `Request body: ${JSON.stringify(body)}\nError: ${e.message}`,
          });
        }
      }
    );
  }

  requestBodyToCalculatePositionRequest(
    body: any
  ): IFailable<CalculatePositionRequest, NON_READABLE> {
    return failable<CalculatePositionRequest, NON_READABLE>(
      ({ success, failure }) => {
        try {
          let bodyToTransform: any = body;

          if("data" in body) {
            bodyToTransform = body.data;
          }

          const calculatePositionRequest: CalculatePositionRequest = plainToClass(
            CalculatePositionRequest,
            bodyToTransform
          );
          return success(calculatePositionRequest);
        } catch (e) {
          return failure({
            type: "NON_READABLE",
            data: JSON.stringify(body),
          });
        }
      }
    );
  }

  signalsToAccessPoints(signals: Signal[], projectId: string): AccessPoint[] {
    return signals.map((s) => {
      const accessPoint = new AccessPoint();
      accessPoint.id = uuid();
      accessPoint.projectId = projectId;
      accessPoint.name = s.ssid;
      accessPoint.bssid = s.bssid;
      return accessPoint;
    });
  }

  signalsMapToPlainObject(receivedSignals: Map<string, number>): any {
    const obj: { [key: string]: number } = {};

    receivedSignals.forEach((rss, bssid) => {
      obj[bssid] = rss;
    });

    return obj;
  }

  plainObjectSignalsToMap(receivedSignals: { [key: string]: number }): Map<string, number> {
    return new Map<string, number>(Object.entries(receivedSignals));
  }

}

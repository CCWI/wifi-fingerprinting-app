import { IFailable } from "ts-failable";
import { Signal } from "./../models/signal";
import { CreateCalibrationFingerprintRequest } from "../models/create-calibration-fingerprint-request";
import { AccessPoint } from "../models/access-point";
import { CalculatePositionRequest } from "../models/calculate-position-request";

export interface IMappingService {
  requestBodyToCreateCalibrationFingerprintRequest(
    body: any
  ): IFailable<CreateCalibrationFingerprintRequest, NON_READABLE>;

  requestBodyToCalculatePositionRequest(
    body: any
  ): IFailable<CalculatePositionRequest, NON_READABLE>;

  signalsToAccessPoints(signals: Signal[], projectId: string): AccessPoint[];

  signalsMapToPlainObject(receivedSignals: Map<string,number>): any;

  plainObjectSignalsToMap(receivedSignals: any): Map<string,number>;
}

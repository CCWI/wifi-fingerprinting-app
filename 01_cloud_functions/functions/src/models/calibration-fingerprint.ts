import { Collection } from "fireorm";
import { Type } from "class-transformer";
import { CalibrationFingerprintFirebase } from "./calibration-fingerprint-firebase";
import { CreateCalibrationFingerprintRequest } from "./create-calibration-fingerprint-request";
import { v1 as uuid } from "uuid";


@Collection('calibration_fingerprints')
export class CalibrationFingerprint {
  id: string;
  projectId: string;
  calibrationPointId: string;
  timeOfCreation: string;
  @Type(() => Number)
  radioMap: Map<string, number>;

  static fromRequest(request: CreateCalibrationFingerprintRequest): CalibrationFingerprint {
    const cf: CalibrationFingerprint = new CalibrationFingerprint;

    const receivedSignalsAsMap: Map<string, number> = new Map<string, number>();

    request.receivedSignals.forEach((signal) => {
      receivedSignalsAsMap.set(signal.bssid, signal.rss);
    });

    cf.id = uuid();
    cf.calibrationPointId = request.calibrationPointId;
    cf.projectId = request.projectId;
    cf.radioMap = receivedSignalsAsMap;
    cf.timeOfCreation = new Date().toISOString();
    return cf;
  }

  public toFirebaseObj(): CalibrationFingerprintFirebase {
    const cfFirebase: CalibrationFingerprintFirebase = new CalibrationFingerprintFirebase();
    cfFirebase.id = this.id;
    cfFirebase.calibrationPointId = this.calibrationPointId;
    cfFirebase.projectId = this.projectId;
    cfFirebase.timeOfCreation = this.timeOfCreation;
    cfFirebase.radioMap = this.signalsToPlainObject(this.radioMap);

    return cfFirebase;
  }

  private signalsToPlainObject(receivedSignals: Map<string, number>): any {
    const obj: { [key: string]: number } = {};

    receivedSignals.forEach((rss, bssid) => {
      obj[bssid] = rss;
    });

    return obj;
  }
}
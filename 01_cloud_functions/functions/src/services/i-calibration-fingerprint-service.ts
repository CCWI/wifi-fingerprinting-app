import { FailablePromise } from "ts-failable";
import { CreateCalibrationFingerprintRequest } from "../models/create-calibration-fingerprint-request";

export interface ICalibrationFingerprintService {
  createCalibrationFingerprintFromRequest(
    creationRequest: CreateCalibrationFingerprintRequest
  ): FailablePromise<void, CalibrationFingerprintError>;
}

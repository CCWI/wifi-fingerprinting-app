import { Signal } from "./signal";
import { Type } from "fireorm";

export class CreateCalibrationFingerprintRequest {
    projectId: string;
    calibrationPointId: string;
    @Type(() => Signal)
    receivedSignals: Signal[];
} 
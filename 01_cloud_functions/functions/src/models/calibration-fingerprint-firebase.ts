import { Collection } from "fireorm";
import { Type } from "class-transformer";

@Collection('calibration_fingerprints')
export class CalibrationFingerprintFirebase {
    id: string;
    projectId: string;
    calibrationPointId: string;
    timeOfCreation: string;
    @Type(() => Object)
    radioMap: any;
}
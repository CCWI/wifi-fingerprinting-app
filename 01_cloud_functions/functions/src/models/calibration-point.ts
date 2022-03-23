import { Collection } from "fireorm";
import {Type} from "fireorm";
import {Position} from "./position";

@Collection('calibration_points')
export class CalibrationPoint {
    id: string;
    projectId: string;
    name: string;
    @Type(() => Object)
    radioMap: Map<string, number>
    @Type(() => Object)
    position: Position;
}
import {Collection} from 'fireorm';
import {FloorMap} from './floor-map';
import {Type} from "class-transformer";

@Collection('projects')
export class Project {
    id: string;
    name: string;
    @Type(() => FloorMap)
    floors: FloorMap[];
    xLength: number;
    yLength: number;
    registeredAccessPoints: number;
    registeredCalibrationPoints: number;
    registeredCalibrationFingerprints: number;
    registeredFingerprints: number;
    registeredCells: number;
}
import { Collection } from "fireorm";
import {Settings} from "./settings";
import {LocationDistance} from "./location-distance";
import {Cell} from "./cell";
import {Position} from "./position";
import {Type} from "class-transformer";

@Collection('fingerprints')
export class Fingerprint {
    id: string;
    projectId: string;
    @Type(() => Settings)
    currentSettings: Settings;
    @Type(() => LocationDistance)
    locationDistances: LocationDistance[];
    @Type(() => Cell)
    cellsIncludingPosition: Cell[];
    receivedNetworks: Map<string, number>;
    calculatedPosition: Position;
    timeOfCreation: string;
}
import { Collection } from "fireorm";
import {Type} from "class-transformer";
import { Position } from "./position";

@Collection('cells')
export class Cell {
    id: string;
    projectId: string;
    name: string;
    @Type(() => Position)
    vertices: Position[];    
}
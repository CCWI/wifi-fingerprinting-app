import { Cell } from "./cell";

export class Line {
    private _origin: [number, number];
    private _direction: [number, number];

    constructor(origin: [number, number], direction: [number, number]) {
        this._origin = origin;
        this._direction = direction;
    }

    public get origin(): [number, number] {
        return this._origin;
    }

    public get direction(): [number, number] {
        return this._direction;
    }

    public intersects(other: Line): boolean {
        return (this.ccw(this._origin, this._direction, other._origin) *
            this.ccw(this._origin, this._direction, other._direction) <=
            0) &&
            (this.ccw(other._origin, other._direction, this._origin) *
                this.ccw(other._origin, other._direction, this._direction) <=
                0);
    }

    static cellIntoLines(cell: Cell): Line[] {
        const linesToReturn: Line[] = [];
        const amountOfVertices = cell.vertices.length;
        const vertices = cell.vertices;
        let sortedVertices: [number, number][] = [];

        if (amountOfVertices === 2) {
            const tempVec1: [number, number] = [vertices[0].x, vertices[0].y];
            const tempVec2: [number, number] = [vertices[1].x, vertices[1].y];

            if (tempVec1[0] === tempVec2[0] || tempVec1[1] === tempVec2[1]) {
                return linesToReturn;
            } else if (tempVec1[0] < tempVec2[0]) {
                if (tempVec1[1] > tempVec2[1]) {
                    sortedVertices = [
                        tempVec1,
                        [tempVec2[0], tempVec1[1]],
                        tempVec2,
                        [tempVec1[0], tempVec2[1]],
                    ];
                } else {
                    sortedVertices = [
                        [tempVec1[0], tempVec2[1]],
                        tempVec2,
                        [tempVec2[0], tempVec1[1]],
                        tempVec1,
                    ];
                }
            } else {
                if (tempVec1[1] < tempVec2[1]) {
                    sortedVertices = [
                        tempVec2,
                        [tempVec1[0], tempVec2[1]],
                        tempVec1,
                        [tempVec2[0], tempVec1[1]],
                    ];
                } else {
                    sortedVertices = [
                        [tempVec1[0], tempVec2[1]],
                        tempVec1,
                        [tempVec1[0], tempVec2[1]],
                        tempVec2,
                    ];
                }
            }
        } else if (amountOfVertices === 3) {
            sortedVertices = [
                [vertices[0].x, vertices[0].y],
                [vertices[1].x, vertices[1].y],
                [vertices[2].x, vertices[2].y],
            ];
        } else if (amountOfVertices === 4) {
            sortedVertices = [
                [vertices[0].x, vertices[0].y],
                [vertices[1].x, vertices[1].y],
                [vertices[2].x, vertices[2].y],
                [vertices[3].x, vertices[3].y],
            ];
        } else {
            return linesToReturn;
        }

        for (let i = 0; i < sortedVertices.length; i++) {
            if ((i + 1) < sortedVertices.length) {
                linesToReturn.push(new Line(sortedVertices[i], sortedVertices[i + 1]));
            } else {
                linesToReturn.push(new Line(sortedVertices[i], sortedVertices[0]));
            }
        }

        return linesToReturn;
    }

    private ccw(a: [number, number], b: [number, number], c: [number, number]): number {
        const dx1: number = b[0] - a[0];
        const dy1: number = b[1] - a[1];

        const dx2: number = c[0] - a[0];
        const dy2: number = c[1] - a[1];

        if ((dx1 * dy2) > (dy1 * dx2)) {
            return 1;
        } else if ((dx1 * dy2) < (dy1 * dx2)) {
            return -1;
        } else {
            if (((dx1 * dx2) < 0) !== ((dy1 * dy2) < 0)) {
                return -1;
            } else if (((dx1 * dx1) + (dy1 * dy1)) >= ((dx2 * dx2) + (dy2 * dy2))) {
                return 0;
            } else {
                return 1;
            }
        }
    }

}
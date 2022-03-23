import { Signal } from "./signal";
import { Settings } from "./settings";

export class CalculatePositionRequest {
    receivedSignals: Signal[];
    projectId: string;
    settings: Settings;
}
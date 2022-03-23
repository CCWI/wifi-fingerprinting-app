import { FailablePromise } from "ts-failable";
import { Fingerprint } from "../models/fingerprint";
import { CalculatePositionRequest } from "../models/calculate-position-request";
import { LocationCalculationError } from "../exceptions/calculate-position-exceptions";

export interface ILocationCalculationService {
  calculateLocation(
    calculatePositionRequest: CalculatePositionRequest
  ): FailablePromise<Fingerprint, LocationCalculationError>;
}

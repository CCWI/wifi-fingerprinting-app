import * as functions from 'firebase-functions';
import { ICalibrationFingerprintService } from '../services/i-calibration-fingerprint-service';
import { CalibrationFingerprintService } from '../services/calibration-fingerprint-service';
import { IMappingService } from '../services/i-mapping-service';
import { MappingService } from '../services/mapping-service';

export const createCalibrationFingerprint = functions.https.onRequest(async (request, response) => {
    const mappingService: IMappingService = new MappingService();

    const failureOrCreationRequest = mappingService.requestBodyToCreateCalibrationFingerprintRequest(request.body);

    await failureOrCreationRequest.match({
        failure: async error => {
            response
                .status(400)
                .json(JSON.stringify(error));
        },
        success: async creationRequest => {
            console.log('Successfully mapped request body to object');
            const calibrationFingerprintService: ICalibrationFingerprintService = new CalibrationFingerprintService(mappingService);

            const failureOrSuccess = await calibrationFingerprintService.createCalibrationFingerprintFromRequest(creationRequest);

            failureOrSuccess.match({
                failure: error => {
                    response.status(400);
                    response.statusMessage = error.toString();
                },
                success: _ => {
                    console.log("Adding new calibration fingerprint succeeded.");
                    response.status(201);
                },
            });
        }
    });

    response.send();
});






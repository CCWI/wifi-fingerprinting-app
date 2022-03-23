import * as functions from 'firebase-functions';
import { IMappingService } from '../services/i-mapping-service';
import { MappingService } from '../services/mapping-service';
import { ILocationCalculationService } from '../services/i-location-calculation-service';
import { LocationCalculationService } from '../services/location-calculation-service';


export const calculatePosition = functions.https.onRequest(async (request, response) => {
    const mappingService: IMappingService = new MappingService();

    const failureOrLocationRequest = mappingService.requestBodyToCalculatePositionRequest(request.body);

    await failureOrLocationRequest.match({
        failure: async error => {
            response
                .status(400)
                .json(JSON.stringify(error));
        },
        success: async locationRequest => {
            console.log(`Successfully mapped request body to object: ${JSON.stringify(locationRequest)}`);
            const locationCalculationService: ILocationCalculationService = new LocationCalculationService(mappingService);
            const failureOrFingerprint = await locationCalculationService.calculateLocation(locationRequest);

            failureOrFingerprint.match({
                failure: error => {
                    response.status(500);
                    response.statusMessage = error.toString();
                },
                success: fingerprint => {
                    const responseBody = {'data' : fingerprint};
                    response.status(200);
                    response.send(responseBody);
                }
            });

        }
    })
});
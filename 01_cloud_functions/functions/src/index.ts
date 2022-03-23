import * as functions from 'firebase-functions';
import 'reflect-metadata';
import * as CalibrationFingerprint from './functions/create-calibration-fingerprint';
import * as PositionCalculation from "./functions/calculate-position";
import * as admin from 'firebase-admin';
import * as fireorm from 'fireorm';

admin.initializeApp();
const firestore = admin.firestore();
fireorm.initialize(firestore);

export const rssNotReceived = -5000.0;

export const createCalibrationFingerprint = functions.https.onRequest(CalibrationFingerprint.createCalibrationFingerprint);

export const calculatePosition = functions.https.onRequest(PositionCalculation.calculatePosition);

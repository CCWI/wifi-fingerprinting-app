class Constants {
  //environment name
  static const local_dev = 'local_dev';

  //collection names
  static const projects = 'projects';
  static const access_points = 'access_points';
  static const fingerprints = 'fingerprints';
  static const calibration_points = 'calibration_points';
  static const calibration_fingerprints = 'calibration_fingerprints';
  static const cells = 'cells';

  //cloud function names
  static const createCalibrationFingerprintFunction = 'createCalibrationFingerprint';
  static const calculatePositionFunction = 'calculatePosition';

  //db name
  static const dbName = 'hm_fingerprinting.db';

  // project statistic properties
  static const registeredCalibrationPoints = 'registeredCalibrationPoints';
  static const registeredFingerprints = 'registeredFingerprints';
  static const registeredCalibrationFingerprints = 'registeredCalibrationFingerprints';
  static const registeredCells = 'registeredCells';
  static const registeredAccessPoints = 'registeredAccessPoints';
}
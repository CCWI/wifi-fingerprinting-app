type ACCESS_POINTS_NOT_RECEIVED = {
    type: "ACCESS_POINTS_NOT_RECEIVED";
    data: string;
  }

  type CALIBRATION_POINTS_NOT_RECEIVED = {
    type: "CALIBRATION_POINTS_NOT_RECEIVED";
    data: string;
  }

  type CARTESIAN_DIMENSIONS_NOT_RECEIVED = {
    type: "CARTESIAN_DIMENSIONS_NOT_RECEIVED";
    data: string;
  }

  type CELLS_NOT_RECEIVED = {
    type: "CELLS_NOT_RECEIVED";
    data: string;
  }

  type NO_SIGNAL_DATABASE_MATCH = {
    type: "NO_SIGNAL_DATABASE_MATCH";
    data: string;
  }

  type EUCLIDEAN_DISTANCE_FAILURE = {
    type: "EUCLIDEAN_DISTANCE_FAILURE";
    data: string;
  }

  type CELLS_INCLUDING_POSITION_ERROR = {
    type: "CELLS_INCLUDING_POSITION_ERROR";
    data: string;
  }

  type CALCULATE_DISTANCE_LOCATIONS_FAILED = {
    type: "CALCULATE_DISTANCE_LOCATIONS_FAILED";
    algorithm: number;
    data: string;
  }  
  
export type LocationCalculationError = NON_READABLE 
    | ACCESS_POINTS_NOT_RECEIVED
    | NO_SIGNAL_DATABASE_MATCH
    | CALIBRATION_POINTS_NOT_RECEIVED
    | CARTESIAN_DIMENSIONS_NOT_RECEIVED
    | CELLS_NOT_RECEIVED
    | EUCLIDEAN_DISTANCE_FAILURE
    | CALCULATE_DISTANCE_LOCATIONS_FAILED
    | CELLS_INCLUDING_POSITION_ERROR;

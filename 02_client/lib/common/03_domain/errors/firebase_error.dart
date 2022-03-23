class FirebaseError {
  //error codes
  static const pluginCloudFirestore = "cloud_firestore";
  static const pluginCloudStorage = "cloud_storage";
  static const pluginCore = "firebase_core";

  //error types
  static const aborted = "aborted";
  static const alreadyExists = "already-exists";
  static const cancelled = "cancelled";
  static const dataLoss = "data-loss";
  static const deadlineExceeded = "deadline-exceeded";
  static const failedPrecondition = "failed-precondition";
  static const internal = "internal";
  static const invalidArgument = "invalid-argument";
  static const notFound = "not-found";
  static const outOfRange = "out-of-range";
  static const permissionDenied = "permission-denied";
  static const resourceExhausted = "resource-exhausted";
  static const unauthenticated = "unauthenticated";
  static const unavailable = "unavailable";
  static const unimplemented = "unimplemented";
  static const unknown = "unknown";

  static const enumMap = const {
    aborted: FirebaseErrorType.ABORTED,
    alreadyExists: FirebaseErrorType.ALREADYEXISTS,
    cancelled: FirebaseErrorType.CANCELLED,
    dataLoss: FirebaseErrorType.DATALOSS,
    deadlineExceeded: FirebaseErrorType.DEADLINEEXCEEDED,
    failedPrecondition: FirebaseErrorType.FAILEDPRECONDITION,
    internal: FirebaseErrorType.INTERNAL,
    invalidArgument: FirebaseErrorType.INVALIDARGUMENT,
    notFound: FirebaseErrorType.NOTFOUND,
    outOfRange: FirebaseErrorType.OUTOFRANGE,
    permissionDenied: FirebaseErrorType.PERMISSIONDENIED,
    resourceExhausted: FirebaseErrorType.RESOURCEEXHAUSTED,
    unauthenticated: FirebaseErrorType.UNAUTHENTICATED,
    unavailable: FirebaseErrorType.UNAVAILABLE,
    unimplemented: FirebaseErrorType.UNIMPLEMENTED,
    unknown: FirebaseErrorType.UNKNOWN,
  };

  static FirebaseErrorType getEnum(String errorCode) {
    return enumMap[errorCode];
  }
}

enum FirebaseErrorType {
  ABORTED,
  ALREADYEXISTS,
  CANCELLED,
  DATALOSS,
  DEADLINEEXCEEDED,
  FAILEDPRECONDITION,
  INTERNAL,
  INVALIDARGUMENT,
  NOTFOUND,
  OUTOFRANGE,
  PERMISSIONDENIED,
  RESOURCEEXHAUSTED,
  UNAUTHENTICATED,
  UNAVAILABLE,
  UNIMPLEMENTED,
  UNKNOWN
}

import 'package:flutter/material.dart';

import '../../../03_domain/entities/calibration_fingerprint.dart';

class CalibrationFingerprintErrorTile extends StatelessWidget {
  final CalibrationFingerprint _errorCalibrationFingerprint;

  const CalibrationFingerprintErrorTile({
    Key key,
    CalibrationFingerprint errorCalibrationFingerprint,
  })  : _errorCalibrationFingerprint = errorCalibrationFingerprint,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Invalid calibration fingerprint',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      subtitle: Text(
        'Reason: ${_errorCalibrationFingerprint.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}

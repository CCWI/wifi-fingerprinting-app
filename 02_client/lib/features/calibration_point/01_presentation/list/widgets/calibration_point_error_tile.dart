import 'package:flutter/material.dart';

import '../../../03_domain/entities/calibration_point.dart';

class CalibrationPointErrorTile extends StatelessWidget {
  final CalibrationPoint _errorCalibrationPoint;

  const CalibrationPointErrorTile({
    Key key,
    CalibrationPoint errorCalibrationPoint,
  })  : _errorCalibrationPoint = errorCalibrationPoint,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Invalid access point',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      subtitle: Text(
        'Reason: ${_errorCalibrationPoint.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}
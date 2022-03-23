import 'package:flutter/material.dart';

class ProjectMenuDash extends StatelessWidget {
  final int registeredAccessPoints;
  final int registeredCalibrationPoints;
  final int registeredCalibrationFingerprints;
  final int registeredFingerprints;
  final int registeredCells;

  const ProjectMenuDash({
    Key key,
    @required this.registeredAccessPoints,
    @required this.registeredCalibrationPoints,
    @required this.registeredCalibrationFingerprints,
    @required this.registeredFingerprints,
    @required this.registeredCells,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Statistics',
                style: Theme.of(context).textTheme.headline5),
          ),
          _buildRow(
            context,
            'Registered Access Points:',
            registeredAccessPoints.toString(),
          ),
          _buildRow(
            context,
            'Registered Calibration Points:',
            registeredCalibrationPoints.toString(),
          ),
          _buildRow(
            context,
            'Registered Calibration Fingerprints:',
            registeredCalibrationFingerprints.toString(),
          ),
          _buildRow(
            context,
            'Registered Fingerprints:',
            registeredFingerprints.toString(),
          ),
          _buildRow(
            context,
            'Registered Cells:',
            registeredCells.toString(),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context, String leftText, String rightText) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Text(leftText, style: Theme.of(context).textTheme.subtitle2),
        ),
        Container(
          padding: EdgeInsets.all(4.0),
          child: Text(rightText, style: Theme.of(context).textTheme.subtitle2),
        ),
      ],
    );
  }
}

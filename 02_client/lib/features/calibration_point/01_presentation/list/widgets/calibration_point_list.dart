import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../03_domain/entities/calibration_point.dart';
import 'calibration_point_error_tile.dart';
import 'calibration_point_tile.dart';

class CalibrationPointList extends StatelessWidget {
  final KtList<CalibrationPoint> calibrationPoints;
  final void Function(CalibrationPoint) onLongPress;
  final void Function(CalibrationPoint) onTap;

  const CalibrationPointList({
    Key key,
    @required this.calibrationPoints,
    @required this.onLongPress,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (calibrationPoints.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO CALIBRATION POINTS AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText:
            Text('ADD A NEW ONE', style: Theme.of(context).textTheme.overline),
      );
    } else {
      return ListView.separated(
        itemCount: calibrationPoints.size,
        itemBuilder: (context, index) {
          final calibrationPoint = calibrationPoints[index];
          if (calibrationPoint.failureOption.isSome()) {
            return CalibrationPointErrorTile(
                errorCalibrationPoint: calibrationPoint);
          }
          return CalibrationPointTile(
            calibrationPoint: calibrationPoint,
            onLongPress: onLongPress,
            onTap: onTap,
          );
        },
        separatorBuilder: (context, _) => Divider(
          color: Theme.of(context).primaryColorLight,
        ),
      );
    }
  }
}

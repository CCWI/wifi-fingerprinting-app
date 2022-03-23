import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../03_domain/entities/calibration_fingerprint.dart';
import 'calibration_fingerprint_error_tile.dart';
import 'calibration_fingerprint_tile.dart';

class CalibrationFingerprintList extends StatelessWidget {
  final KtList<CalibrationFingerprint> calibrationFingerprints;
  final void Function(CalibrationFingerprint, BuildContext) onLongPress;

  const CalibrationFingerprintList({
    Key key,
    @required this.calibrationFingerprints,
    @required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (calibrationFingerprints.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO CALIBRATION DATA AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText:
            Text('ADD NEW CALIBRATION FINGERPRINT', style: Theme.of(context).textTheme.overline),
      );
    } else {
      return ListView.separated(
        itemCount: calibrationFingerprints.size,
        itemBuilder: (context, index) {
          final calibrationFingerprint = calibrationFingerprints[index];
          if (calibrationFingerprint.failureOption.isSome()) {
            return CalibrationFingerprintErrorTile(errorCalibrationFingerprint: calibrationFingerprint);
          }
          return CalibrationFingerprintTile(
            calibrationFingerprint: calibrationFingerprint,
            onLongPress: onLongPress,
          );
        },
        separatorBuilder: (context, _) => Divider(
          color: Theme.of(context).primaryColorLight,
        ),
      );
    }
  }
}
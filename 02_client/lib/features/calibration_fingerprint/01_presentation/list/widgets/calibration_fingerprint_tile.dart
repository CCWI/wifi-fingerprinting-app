import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

import '../../../03_domain/entities/calibration_fingerprint.dart';

class CalibrationFingerprintTile extends StatelessWidget {
  final CalibrationFingerprint calibrationFingerprint;
  final void Function(CalibrationFingerprint, BuildContext) onLongPress;

  const CalibrationFingerprintTile({
    Key key,
    this.calibrationFingerprint,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => onLongPress(calibrationFingerprint, context),
      child: ExpansionTile(
        title: Container(
          padding: EdgeInsets.only(top: 7.0),
          child: Text(
            DateFormat('yyyy-MM-dd HH:mm:ss').format(calibrationFingerprint.timeOfCreation),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Container(
          alignment: Alignment.topLeft,
          child: Text(
            'ID: ${calibrationFingerprint.id.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        children: <Widget>[
          Column(
            children: _buildReceivedSignalsList(context),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildReceivedSignalsList(BuildContext context) {
    List<Widget> columnContent = [];

    calibrationFingerprint.receivedSignals
        .forEach((bssid, rss) => columnContent.add(ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('BSSID: ${bssid.getOrCrash()}'),
                  Text('RSS: ${rss.getOrCrash().toStringAsFixed(3)}'),
                ],
              ),
            )));

    return columnContent;
  }
}

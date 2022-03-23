import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../03_domain/entities/calibration_point.dart';

class CalibrationPointTile extends StatelessWidget {
  final CalibrationPoint _calibrationPoint;
  final void Function(CalibrationPoint) _onLongPress;
  final void Function(CalibrationPoint) _onTap;

  const CalibrationPointTile({
    Key key,
    CalibrationPoint calibrationPoint,
    void Function(CalibrationPoint) onLongPress,
    void Function(CalibrationPoint) onTap,
  })  : _calibrationPoint = calibrationPoint,
        _onLongPress = onLongPress,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => _onTap(_calibrationPoint),
      onLongPress: () => _onLongPress(_calibrationPoint),
      child: ExpansionTile(
        title: Container(
          padding: EdgeInsets.only(top: 7.0),
          child: Text(
            _calibrationPoint.name.getOrCrash(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Column(
          children: <Widget>[
            SizedBox(height: 7.0),
            _buildPosition(context),
          ],
        ),
        children: _buildReceivedSignalsList(context),
      ),
    );
  }

  Widget _buildPosition(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'X: ${_calibrationPoint.position.x.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Y: ${_calibrationPoint.position.y.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'FLOOR: ${_calibrationPoint.position.floor.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildReceivedSignalsList(BuildContext context) {
    List<Widget> columnContent = [];

    if (_calibrationPoint.radioMap.entries.isEmpty()) {
      columnContent.add(Text(
        'NO CALIBRATION FINGERPRINTS ADDED',
        style: Theme.of(context).textTheme.overline,
      ));
    } else {
      _calibrationPoint.radioMap.forEach(
        (bssid, rss) => columnContent.add(
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('BSSID: ${bssid.getOrCrash()}'),
                Text('RSS: ${rss.getOrCrash().toStringAsFixed(3)}'),
              ],
            ),
          ),
        ),
      );
    }

    return columnContent;
  }
}

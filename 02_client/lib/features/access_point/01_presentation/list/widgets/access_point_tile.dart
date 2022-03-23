import 'package:flutter/material.dart';

import '../../../03_domain/entities/access_point.dart';

class AccessPointTile extends StatelessWidget {
  final AccessPoint _accessPoint;
  final void Function(AccessPoint) _onLongPress;

  const AccessPointTile({
    Key key,
    AccessPoint accessPoint,
    void Function(AccessPoint) onLongPress,
  })  : _accessPoint = accessPoint,
        _onLongPress = onLongPress,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.only(top: 7.0),
        child: Text(
          _accessPoint.ssid.getOrCrash(),
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          SizedBox(height: 7.0),
          Visibility(
            visible: _accessPoint.name != _accessPoint.ssid,
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'NAME: ${_accessPoint.name.getOrCrash()}',
                style: Theme.of(context).textTheme.overline,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'BSSID: ${_accessPoint.bssid.getOrCrash()}',
              style: Theme.of(context).textTheme.overline,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.wifi,
        color: Theme.of(context).primaryColorLight,
      ),
      onLongPress: () => _onLongPress(_accessPoint),
    );
  }
}

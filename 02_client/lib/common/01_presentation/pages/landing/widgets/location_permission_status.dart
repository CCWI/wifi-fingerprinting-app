import 'package:flutter/material.dart';

class LocationPermissionStatus extends StatelessWidget {
  final String statusText;
  final bool showButton;
  final Function(BuildContext context) onPressed;

  const LocationPermissionStatus({
    Key key,
    this.statusText,
    this.showButton,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 150.0),
      child: Column(
        children: <Widget>[
          Text(
              'Location Permission Status: $statusText',
              style: Theme.of(context).textTheme.overline),
          Visibility(
            child: RaisedButton(
              color: Theme.of(context).primaryColorDark.withOpacity(0.5),
              child: Text(
                'Request Location Permission',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onPressed: () => onPressed(context),
            ),
            visible: showButton,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CenteredInfoScreen extends StatelessWidget {
  final Widget text;
  final Widget subText;
  final Icon icon;

  const CenteredInfoScreen({
    Key key,
    @required this.text,
    this.subText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          SizedBox(height: 10.0),
          text,
          subText,
        ],
      ),
    );
  }
}

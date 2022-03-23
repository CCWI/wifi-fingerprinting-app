import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  final String text;

  const LogoText({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 8.1,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2.copyWith(
              color: Theme.of(context).accentColor,
            ),
      ),
    );
  }
}

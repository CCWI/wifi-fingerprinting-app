import 'package:flutter/material.dart';

InputDecoration inputDecorationAccentColorBackground({
  @required BuildContext context,
  String labelText,
  String counterText,
  String hintText,
  Widget prefix,
}) {
  return InputDecoration(
    prefix: prefix,
    hintText: hintText,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).primaryColorLight,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    labelText: labelText,
    labelStyle: TextStyle(
      color: Theme.of(context).primaryColorLight,
    ),
    counterText: counterText,
    counterStyle: TextStyle(
      color: Theme.of(context).primaryColorLight,
    ),
  );
}

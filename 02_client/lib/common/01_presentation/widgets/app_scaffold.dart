import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget appBarTitle;
  final List<Widget> appBarActions;
  final Widget bodyWidget;
  final Color bodyColor;
  final bool resizeToAvoidBottomInset;
  final Widget floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;

  const AppScaffold({
    @required Widget title,
    @required Widget body,
    Widget fab,
    List<Widget> actions,
    Color bodyColor,
    bool resizeToAvoidBottomInset,
    FloatingActionButtonLocation floatingActionButtonLocation,
  })  : appBarTitle = title,
        bodyWidget = body,
        floatingActionButton = fab,
        appBarActions = actions,
        bodyColor = bodyColor,
        resizeToAvoidBottomInset = resizeToAvoidBottomInset,
        floatingActionButtonLocation = floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFC4001C),
        title: appBarTitle,
        actions: appBarActions ?? null,
      ),
      backgroundColor: bodyColor ?? null,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: bodyWidget,
      floatingActionButton: floatingActionButton ?? null,
      floatingActionButtonLocation: floatingActionButtonLocation ?? null,
    );
  }
}

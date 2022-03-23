import 'package:flutter/material.dart';

class BottomButtonList extends StatelessWidget {
  final List<BottomButtonDetail> bottomButtonDetails;

  const BottomButtonList({
    Key key,
    @required this.bottomButtonDetails,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildButtons(context, bottomButtonDetails),
      ),
    );
  }

  List<Widget> _buildButtons(
      BuildContext context, List<BottomButtonDetail> buttonDetails) {
    return buttonDetails.map((details) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              child: IconButton(
                splashColor: Theme.of(context).splashColor,
                icon: Icon(
                  details._icon,
                  color: Theme.of(context).accentIconTheme.color,
                ),
                tooltip: details._tooltipText ?? '',
                onPressed: details._onPressed ?? null,
              ),
            ),
          ),
          Text(details._text.toUpperCase(),
              style: Theme.of(context).textTheme.overline),
        ],
      );
    }).toList();
  }
}

class BottomButtonDetail {
  final String _text;
  final IconData _icon;
  final VoidCallback _onPressed;
  final String _tooltipText;

  const BottomButtonDetail({
    @required String text,
    @required IconData icon,
    @required VoidCallback onPressed,
    String tooltipText,
  })  : _text = text,
        _icon = icon,
        _onPressed = onPressed,
        _tooltipText = tooltipText;
}

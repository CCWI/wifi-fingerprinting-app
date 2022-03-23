import 'package:flutter/material.dart';

class MenuFlatButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final IconData buttonIcon;
  final Color buttonColor;

  MenuFlatButton({
    @required this.buttonText,
    @required this.onPressed,
    @required this.buttonIcon,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      width: (MediaQuery.of(context).size.width) / 2,
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: FlatButton(
          color: buttonColor?? Theme.of(context).accentColor,
          disabledColor: Colors.grey.shade700,
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                buttonIcon,
                size: 30.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                buttonText.toUpperCase(),
                style: Theme.of(context).textTheme.overline,
                textAlign: TextAlign.center,                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
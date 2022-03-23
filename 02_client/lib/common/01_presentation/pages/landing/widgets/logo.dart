import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: RectanglePainter(),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.rotate(0.7853982);
    canvas.drawRect(
      Rect.fromLTRB(0.0, 0.0, 150.0, 150.0),
      Paint()..color = Color(0xFFC4001C),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

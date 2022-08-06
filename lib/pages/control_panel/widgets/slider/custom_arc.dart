import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomArc extends StatelessWidget {
  final double? diameter;
  final double? sweepAngle;
  final Color? color;

  const CustomArc({
    Key? key,
    this.diameter = 200,
    @required this.sweepAngle,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(sweepAngle, color),
      size: Size(diameter!, diameter!),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter(this.sweepAngle, this.color);
  final double? sweepAngle;
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 35.0
      ..style = PaintingStyle.stroke
      ..color = color!;

    double degToRad(num deg) => deg * (math.pi);

    final path = Path()
      ..arcTo(
          Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            height: size.height,
            width: size.width,
          ),
          degToRad(1),
          degToRad(sweepAngle!),
          false);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

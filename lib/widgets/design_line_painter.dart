import 'package:flutter/material.dart';

class LeftLineDesign extends CustomPainter {
  final Color color;
  final double circleRadius;
  final double curveRadius;
  final double lineWidth;

  LeftLineDesign({
    required this.color,
    this.circleRadius = 20,
    this.lineWidth = 20,
    this.curveRadius = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    canvas.drawPath(getLinePath(size.width, size.height), paint);
    // canvas.drawPath(getCirclePath(size.width, size.height), paint);
    canvas.drawCircle(Offset(circleRadius, circleRadius), circleRadius, paint);
  }

  Path getCirclePath(double x, double y) {
    return Path()
      ..moveTo(
        circleRadius / 2,
        circleRadius / 2,
      ) // start topLeft left
      ..addOval(Rect.fromCircle(
          center: Offset(
            circleRadius / 2,
            circleRadius / 2,
          ),
          radius: circleRadius));
  }

  Path getLinePath(double x, double y) {
    double cr = circleRadius;
    double lr = curveRadius;
    return Path()
      ..moveTo(cr, (cr * 2)) // start topLeft left
      ..lineTo(cr, y - (lr + lr))
      ..quadraticBezierTo(cr, y - lr, cr + lr, y - lr)
      ..lineTo(x - (cr + lr), y - lr)
      ..quadraticBezierTo(x - cr, y - lr, x - cr, y);
  }

  @override
  bool shouldRepaint(LeftLineDesign oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.circleRadius != circleRadius ||
        oldDelegate.lineWidth != lineWidth;
  }
}

class RightLineDesign extends CustomPainter {
  final Color color;
  final double circleRadius;
  final double curveRadius;
  final double lineWidth;

  RightLineDesign({
    required this.color,
    this.circleRadius = 20,
    this.lineWidth = 20,
    this.curveRadius = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    canvas.drawPath(getLinePath(size.width, size.height), paint);
    canvas.drawCircle(
        Offset(size.width - circleRadius, circleRadius), circleRadius, paint);
  }

  Path getCirclePath(double x, double y) {
    return Path()
      ..moveTo(
        x - (circleRadius / 2),
        (circleRadius / 2),
      ) // start topLeft left
      ..addOval(Rect.fromCircle(
          center: Offset(
            circleRadius / 2,
            circleRadius / 2,
          ),
          radius: circleRadius));
  }

  Path getLinePath(double x, double y) {
    double cr = circleRadius;
    double lr = curveRadius;
    return Path()
      ..moveTo(x - cr, (cr * 2)) // start topLeft
      ..lineTo(x - cr, y - (lr + lr))
      ..quadraticBezierTo(x - cr, y - lr, x - (cr + lr), y - lr)
      ..lineTo(cr + lr, y - lr)
      ..quadraticBezierTo(cr, y - lr, cr, y);
  }

  @override
  bool shouldRepaint(RightLineDesign oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.circleRadius != circleRadius ||
        oldDelegate.lineWidth != lineWidth;
  }
}

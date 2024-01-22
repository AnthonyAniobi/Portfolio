import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  final LinearGradient gradient;
  final double cornerRadius;
  final double arrowWidth;

  ShapePainter({
    required this.gradient,
    this.cornerRadius = 20,
    this.arrowWidth = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    canvas.drawPath(getReceiptPath(size.width, size.height), paint);
  }

  Path getReceiptPath(double x, double y) {
    double rad = cornerRadius;
    double aw = arrowWidth;

    Path path = Path()
      ..moveTo(0, y) // start bottom left
      ..lineTo(0, rad) // line to top left
      ..quadraticBezierTo(0, 0, rad, 0) // top left radius
      ..lineTo(x, 0) // line to top right
      ..lineTo(x - aw, aw)
      ..lineTo(aw, aw)
      ..lineTo(aw, y - aw)
      ..lineTo(0, y);

    return path;
  }

  @override
  bool shouldRepaint(ShapePainter oldDelegate) {
    return oldDelegate.gradient != gradient ||
        oldDelegate.arrowWidth != arrowWidth ||
        oldDelegate.cornerRadius != cornerRadius;
  }
}

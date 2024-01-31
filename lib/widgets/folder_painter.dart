import 'package:flutter/material.dart';

class FolderPainter extends CustomPainter {
  final Color color;
  final double cornerRadius;
  final double leftSpace;

  FolderPainter({
    required this.color,
    this.cornerRadius = 20,
    this.leftSpace = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(getFolderPath(size.width, size.height), paint);
  }

  Path getFolderPath(double x, double y) {
    double ls = leftSpace;
    double cr = cornerRadius;

    Path path = Path()
      ..moveTo(cr, 0)
      ..lineTo((x / 2) - cr, 0)
      ..quadraticBezierTo(x / 2, 0, x / 2, cr)
      ..quadraticBezierTo((x / 2), cr + cr, x / 2, cr + cr)
      ..lineTo(x - (ls + cr), cr + cr)
      ..quadraticBezierTo(x - ls, cr + cr, x - ls, 3 * cr) // top left curve
      ..lineTo(x, y - cr)
      ..quadraticBezierTo(x, y, x - cr, y)
      ..lineTo(ls + cr, y)
      ..quadraticBezierTo(ls, y, ls, y - cr)
      ..lineTo(0, cr)
      ..quadraticBezierTo(0, 0, cr, 0);
    // ..moveTo(cr, 0) // start top left with space x
    // ..lineTo(x - (cr + ls), 0) // line to top right with space x
    // ..quadraticBezierTo(x - ls, 0, (x + cr) - ls, cr) // top right radius
    // ..lineTo(x, y - cr) // line to top right
    // ..quadraticBezierTo(x, y, x - cr, y)
    // ..lineTo(ls + cr, y)
    // ..quadraticBezierTo(ls, y, ls, y - cr)
    // ..lineTo(0, cr)
    // ..quadraticBezierTo(0, 0, cr, 0);

    return path;
  }

  @override
  bool shouldRepaint(FolderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.leftSpace != leftSpace ||
        oldDelegate.cornerRadius != cornerRadius;
  }
}

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0xffF46526)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.4964286);
    path0.quadraticBezierTo(size.width * 0.2019444, size.height * 0.3452500,
        size.width * 0.3843056, size.height * 0.3893571);
    path0.cubicTo(
        size.width * 0.4880278,
        size.height * 0.4183750,
        size.width * 0.5534722,
        size.height * 0.4375000,
        size.width * 0.6250000,
        size.height * 0.4464286);
    path0.quadraticBezierTo(size.width * 0.7569444, size.height * 0.4509821,
        size.width, size.height * 0.3357143);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.lineTo(0, size.height * 0.4964286);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

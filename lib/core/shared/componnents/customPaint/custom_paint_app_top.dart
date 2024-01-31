import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintAppTop extends StatelessWidget {
  final Color? myColor;
  const CustomPaintAppTop({
    super.key,
    this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.height * 0.36).toDouble()),
      painter: CustomPainterAppTop(color: myColor ?? AppColors.accentColor),
    );
  }
}

class CustomPainterAppTop extends CustomPainter {
  final Color color;

  CustomPainterAppTop({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0012500, size.height * 0.9953488);
    path_0.quadraticBezierTo(size.width * 1.0021875, size.height * 0.2505814,
        size.width * 1.0025000, size.height * 0.0023256);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * -0.0004125, size.height * 0.8783721);
    path_0.quadraticBezierTo(size.width * 0.1888750, size.height * 0.9998372,
        size.width * 0.4400000, size.height * 0.9093023);
    path_0.cubicTo(
        size.width * 0.8686000,
        size.height * 0.7606047,
        size.width * 1.0033625,
        size.height * 0.9988837,
        size.width * 1.0012500,
        size.height * 0.9953488);
    path_0.close();

    Paint paintfill = Paint()..style = PaintingStyle.fill;
    paintfill.color = color;
    canvas.drawPath(path_0, paintfill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintRegisterBottom extends StatelessWidget {
  const CustomPaintRegisterBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          Get.width,
          // (Get.width * 1.04)
          (Get.width * 0.98).toDouble()),
      painter: RegisterTopCustomPainter(),
    );
  }
}

class RegisterTopCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.1538462);
    path.cubicTo(0, size.height * 0.08132231, 0, size.height * 0.04506051,
        size.width * 0.02343147, size.height * 0.02253026);
    path.cubicTo(size.width * 0.04686293, 0, size.width * 0.08457520, 0,
        size.width * 0.1600000, 0);
    path.lineTo(size.width * 0.8400000, 0);
    path.cubicTo(size.width * 0.9154240, 0, size.width * 0.9531360, 0,
        size.width * 0.9765680, size.height * 0.02253026);
    path.cubicTo(size.width, size.height * 0.04506051, size.width,
        size.height * 0.08132231, size.width, size.height * 0.1538462);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.1538462);
    path.close();

    Paint paintfill = Paint()..style = PaintingStyle.fill;
    paintfill.color = AppColors.primaryColor;
    canvas.drawPath(path, paintfill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

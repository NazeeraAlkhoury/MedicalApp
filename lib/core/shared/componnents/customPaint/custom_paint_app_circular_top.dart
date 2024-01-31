import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintAppCircularTop extends StatelessWidget {
  const CustomPaintAppCircularTop({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.height * 0.2).toDouble()),
      painter: CustomPainterAppCircularTop(),
    );
  }
}

//Get.width, (Get.width * 0.416)
//Get.height * 0.36
class CustomPainterAppCircularTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.8717949);
    path.cubicTo(size.width, size.height * 0.9426026, size.width * 0.9761227,
        size.height, size.width * 0.9466667, size.height);
    path.lineTo(size.width * 0.05333333, size.height);
    path.cubicTo(size.width * 0.02387816, size.height, 0,
        size.height * 0.9426026, 0, size.height * 0.8717949);
    path.lineTo(0, 0);
    path.close();

    Paint paintfill = Paint()..style = PaintingStyle.fill;
    paintfill.color = AppColors.primaryColor;
    canvas.drawPath(path, paintfill);
  }

  @override
  bool shouldRepaint(covariant CustomPainterAppCircularTop oldDelegate) {
    return true;
  }
}

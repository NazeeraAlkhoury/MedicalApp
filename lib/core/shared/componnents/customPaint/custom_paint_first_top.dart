import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintFirstTop extends StatelessWidget {
  const CustomPaintFirstTop({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.width * 0.7253333333333334).toDouble()),
      painter: CustomPainterFirstTop(),
    );
  }
}

class CustomPainterFirstTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * -0.3200000, size.height * -0.2573529);
    path.cubicTo(
        size.width * -0.3200000,
        size.height * -0.2715662,
        size.width * -0.3116427,
        size.height * -0.2830882,
        size.width * -0.3013333,
        size.height * -0.2830882);
    path.lineTo(size.width * 1.162667, size.height * -0.2830882);
    path.cubicTo(
        size.width * 1.172976,
        size.height * -0.2830882,
        size.width * 1.181333,
        size.height * -0.2715662,
        size.width * 1.181333,
        size.height * -0.2573529);
    path.lineTo(size.width * 1.181333, size.height * 0.8458382);
    path.cubicTo(
        size.width * 1.181333,
        size.height * 0.8602574,
        size.width * 1.166643,
        size.height * 0.8634485,
        size.width * 1.163427,
        size.height * 0.8497279);
    path.cubicTo(
        size.width * 1.085317,
        size.height * 0.5164485,
        size.width * 0.7922533,
        size.height * 0.3886360,
        size.width * 0.5893253,
        size.height * 0.5993493);
    path.lineTo(size.width * 0.3735520, size.height * 0.8234044);
    path.cubicTo(
        size.width * 0.1760165,
        size.height * 1.006118,
        size.width * -0.07273947,
        size.height * 1.048544,
        size.width * -0.2966133,
        size.height * 0.9377096);
    path.lineTo(size.width * -0.3186400, size.height * 0.9268051);
    path.cubicTo(
        size.width * -0.3194560,
        size.height * 0.9264007,
        size.width * -0.3200000,
        size.height * 0.9253346,
        size.width * -0.3200000,
        size.height * 0.9241360);
    path.lineTo(size.width * -0.3200000, size.height * -0.2573529);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = AppColors.primaryColor;

    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

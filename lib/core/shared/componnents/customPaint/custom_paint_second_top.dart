import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintSecondTop extends StatelessWidget {
  const CustomPaintSecondTop({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.width * 1.3546666666666667).toDouble()),
      painter: CustomPainterSecondTop(),
    );
  }
}

class CustomPainterSecondTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1188499, size.height * -0.2212224);
    path.cubicTo(
        size.width * 0.1240045,
        size.height * -0.2278130,
        size.width * 0.1354208,
        size.height * -0.2300709,
        size.width * 0.1443488,
        size.height * -0.2262657);
    path.lineTo(size.width * 1.577120, size.height * 0.3843720);
    path.cubicTo(
        size.width * 1.586048,
        size.height * 0.3881772,
        size.width * 1.589107,
        size.height * 0.3966043,
        size.width * 1.583952,
        size.height * 0.4031949);
    path.lineTo(size.width * 1.120939, size.height * 0.9951949);
    path.cubicTo(
        size.width * 1.115016,
        size.height * 1.002766,
        size.width * 1.099296,
        size.height * 0.9982559,
        size.width * 1.101859,
        size.height * 0.9897185);
    path.cubicTo(
        size.width * 1.164549,
        size.height * 0.7807165,
        size.width * 0.9264373,
        size.height * 0.5894055,
        size.width * 0.6390240,
        size.height * 0.6178563);
    path.lineTo(size.width * 0.3420160, size.height * 0.6472559);
    path.cubicTo(
        size.width * 0.07347200,
        size.height * 0.6628091,
        size.width * -0.1886179,
        size.height * 0.5812795,
        size.width * -0.3610907,
        size.height * 0.4285394);
    path.lineTo(size.width * -0.3767653, size.height * 0.4146575);
    path.cubicTo(
        size.width * -0.3773760,
        size.height * 0.4141181,
        size.width * -0.3774640,
        size.height * 0.4133543,
        size.width * -0.3769893,
        size.height * 0.4127461);
    path.lineTo(size.width * 0.1188499, size.height * -0.2212224);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = AppColors.accentColor;
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

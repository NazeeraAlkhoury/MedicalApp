import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintAppTopAuth extends StatelessWidget {
  const CustomPaintAppTopAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.height * 0.54).toDouble()),
      painter: AppTopAuthCustomPainter(),
    );
  }
}

// Get.height * 0.54
// Get.width * 1.168
class AppTopAuthCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1672267, size.height * -0.4153836);
    path.cubicTo(
        size.width * 0.1723813,
        size.height * -0.4230274,
        size.width * 0.1837976,
        size.height * -0.4256461,
        size.width * 0.1927256,
        size.height * -0.4212329);
    path.lineTo(size.width * 1.625496, size.height * 0.2869954);
    path.cubicTo(
        size.width * 1.634424,
        size.height * 0.2914087,
        size.width * 1.637485,
        size.height * 0.3011826,
        size.width * 1.632331,
        size.height * 0.3088265);
    path.lineTo(size.width * 1.169317, size.height * 0.9954384);
    path.cubicTo(
        size.width * 1.163395,
        size.height * 1.004221,
        size.width * 1.147675,
        size.height * 0.9989886,
        size.width * 1.150235,
        size.height * 0.9890868);
    path.cubicTo(
        size.width * 1.212928,
        size.height * 0.7466826,
        size.width * 0.9748133,
        size.height * 0.5247968,
        size.width * 0.6874000,
        size.height * 0.5577945);
    path.lineTo(size.width * 0.3903920, size.height * 0.5918950);
    path.cubicTo(
        size.width * 0.1218488,
        size.height * 0.6099315,
        size.width * -0.1402411,
        size.height * 0.5153744,
        size.width * -0.3127147,
        size.height * 0.3382237);
    path.lineTo(size.width * -0.3283893, size.height * 0.3221210);
    path.cubicTo(
        size.width * -0.3290000,
        size.height * 0.3214954,
        size.width * -0.3290880,
        size.height * 0.3206119,
        size.width * -0.3286107,
        size.height * 0.3199064);
    path.lineTo(size.width * 0.1672267, size.height * -0.4153836);
    path.close();

    Paint paintfill = Paint()..style = PaintingStyle.fill;
    paintfill.color = AppColors.accentColor;
    canvas.drawPath(path, paintfill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

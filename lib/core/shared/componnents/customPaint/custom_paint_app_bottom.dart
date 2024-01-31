import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPaintAppBottom extends StatelessWidget {
  const CustomPaintAppBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.width * 0.4186666666666667).toDouble()),
      painter: CustomPainterAppBottom(),
    );
  }
}

//Get.width * 0.4186666666666667
class CustomPainterAppBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 1.221448, size.height * 2.226115);
    path.cubicTo(
        size.width * 1.220707,
        size.height * 2.250675,
        size.width * 1.211771,
        size.height * 2.269146,
        size.width * 1.201488,
        size.height * 2.267382);
    path.lineTo(size.width * -0.2587253, size.height * 2.016051);
    path.cubicTo(
        size.width * -0.2690080,
        size.height * 2.014287,
        size.width * -0.2767440,
        size.height * 1.992936,
        size.width * -0.2760027,
        size.height * 1.968376);
    path.lineTo(size.width * -0.2184909, size.height * 0.06205892);
    path.cubicTo(
        size.width * -0.2177395,
        size.height * 0.03714611,
        size.width * -0.2029203,
        size.height * 0.03415401,
        size.width * -0.2004285,
        size.height * 0.05841204);
    path.cubicTo(
        size.width * -0.1398957,
        size.height * 0.6477325,
        size.width * 0.1457480,
        size.height * 0.9189045,
        size.width * 0.3591360,
        size.height * 0.5896223);
    path.lineTo(size.width * 0.5860320, size.height * 0.2394955);
    path.cubicTo(
        size.width * 0.7925813,
        size.height * -0.04231892,
        size.width * 1.042907,
        size.height * -0.07292994,
        size.width * 1.260424,
        size.height * 0.1570280);
    path.lineTo(size.width * 1.281824, size.height * 0.1796516);
    path.cubicTo(
        size.width * 1.282616,
        size.height * 0.1804898,
        size.width * 1.283104,
        size.height * 0.1824268,
        size.width * 1.283043,
        size.height * 0.1844930);
    path.lineTo(size.width * 1.221448, size.height * 2.226115);
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

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomPaintServicesProvider extends StatelessWidget {
  const CustomPaintServicesProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(Get.width, (Get.width * 0.84).toDouble()),
      painter: CustomPainterServicesProvider(),
    );
  }
}

class CustomPainterServicesProvider extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.221448, size.height * 1.109524);
    path_0.cubicTo(
        size.width * 1.220707,
        size.height * 1.121765,
        size.width * 1.211771,
        size.height * 1.130971,
        size.width * 1.201488,
        size.height * 1.130092);
    path_0.lineTo(size.width * -0.2587253, size.height * 1.004825);
    path_0.cubicTo(
        size.width * -0.2690080,
        size.height * 1.003946,
        size.width * -0.2767440,
        size.height * 0.9933048,
        size.width * -0.2760027,
        size.height * 0.9810635);
    path_0.lineTo(size.width * -0.2184909, size.height * 0.03093114);
    path_0.cubicTo(
        size.width * -0.2177395,
        size.height * 0.01851429,
        size.width * -0.2029203,
        size.height * 0.01702298,
        size.width * -0.2004285,
        size.height * 0.02911352);
    path_0.cubicTo(
        size.width * -0.1398957,
        size.height * 0.3228381,
        size.width * 0.1457480,
        size.height * 0.4579937,
        size.width * 0.3591360,
        size.height * 0.2938752);
    path_0.lineTo(size.width * 0.5860320, size.height * 0.1193679);
    path_0.cubicTo(
        size.width * 0.7925813,
        size.height * -0.02109210,
        size.width * 1.042907,
        size.height * -0.03634889,
        size.width * 1.260424,
        size.height * 0.07826476);
    path_0.lineTo(size.width * 1.281824, size.height * 0.08954095);
    path_0.cubicTo(
        size.width * 1.282616,
        size.height * 0.08995873,
        size.width * 1.283104,
        size.height * 0.09092413,
        size.width * 1.283043,
        size.height * 0.09195365);
    path_0.lineTo(size.width * 1.221448, size.height * 1.109524);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff1F2B6C).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

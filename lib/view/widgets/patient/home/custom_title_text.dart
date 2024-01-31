import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTiltleText extends StatelessWidget {
  final String text;
  const CustomTiltleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}

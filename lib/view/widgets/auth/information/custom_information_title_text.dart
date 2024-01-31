import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInformationTitleText extends StatelessWidget {
  final String text;
  const CustomInformationTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}

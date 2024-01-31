import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextUnderLineAuth extends StatelessWidget {
  final String text;
  const CustomTextUnderLineAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.headline2!.copyWith(
            decoration: TextDecoration.underline,
          ),
    );
  }
}

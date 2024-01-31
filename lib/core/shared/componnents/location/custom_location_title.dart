import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLocationTitle extends StatelessWidget {
  final String text;
  const CustomLocationTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text.tr, style: Theme.of(context).textTheme.headline5);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDiscreptionTextDone extends StatelessWidget {
  final String desciption;
  const CustomDiscreptionTextDone({
    Key? key,
    required this.desciption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      desciption.tr,
      style: Theme.of(context).textTheme.caption,
      textAlign: TextAlign.center,
    );
  }
}

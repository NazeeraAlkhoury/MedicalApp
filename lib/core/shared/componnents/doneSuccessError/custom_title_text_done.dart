import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTitleTextDone extends StatelessWidget {
  final String title;
  const CustomTitleTextDone({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}

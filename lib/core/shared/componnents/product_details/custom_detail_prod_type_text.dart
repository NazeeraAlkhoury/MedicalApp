import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDetailsProdTypeText extends StatelessWidget {
  final String text;
  const CustomDetailsProdTypeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 9.5.sp),
    );
  }
}

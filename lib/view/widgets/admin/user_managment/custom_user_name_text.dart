import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomUserNameText extends StatelessWidget {
  final String name;
  const CustomUserNameText({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.tr,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 11.sp),
    );
  }
}

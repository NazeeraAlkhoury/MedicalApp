import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAdminTitleText extends StatelessWidget {
  final String title;
  const CustomAdminTitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 18.sp),
    );
  }
}

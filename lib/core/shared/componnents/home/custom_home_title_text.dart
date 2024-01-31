import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomHomeTitleText extends StatelessWidget {
  final String text;
  const CustomHomeTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.headline4!.copyWith(
            color: AppColors.whiteColor,
            fontSize: 24.sp,
          ),
    );
  }
}

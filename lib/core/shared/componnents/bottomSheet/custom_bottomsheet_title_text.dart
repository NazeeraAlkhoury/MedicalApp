import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomBottomSheetTitleText extends StatelessWidget {
  final String text;
  const CustomBottomSheetTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .copyWith(fontSize: 22.sp, color: AppColors.whiteColor),
    );
  }
}

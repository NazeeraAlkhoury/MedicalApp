import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomBottomSheetBodyText extends StatelessWidget {
  final String text;
  final double? size;
  const CustomBottomSheetBodyText(
      {super.key, required this.text, this.size = 13});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: Theme.of(context).textTheme.caption!.copyWith(
          fontSize: size!.sp, color: AppColors.accentColor, height: 1.6),
    );
  }
}

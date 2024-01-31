import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function()? onPressed;
  const CustomAppButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 33.h,
      minWidth: 113.w,
      onPressed: onPressed,
      color: color ?? AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.37.r),
      ),
      child: Text(
        text.tr,
        style: Theme.of(context).textTheme.headline5!.copyWith(
              fontSize: 13.sp,
            ),
      ),
    );
  }
}

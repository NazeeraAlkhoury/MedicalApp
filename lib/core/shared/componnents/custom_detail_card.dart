import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomDetailCard extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomDetailCard({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Text(
          text.tr,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 11.sp,
                color: color ?? AppColors.primaryColor,
              ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomQuantity extends StatelessWidget {
  const CustomQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.67.h,
      width: 38.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.67.r),
        color: AppColors.lightGreyColor,
      ),
      child: Center(
        child: Text(
          '${AppStrings.qty.tr} 1',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: AppColors.blackColor,
                fontSize: 6.sp,
              ),
        ),
      ),
    );
  }
}

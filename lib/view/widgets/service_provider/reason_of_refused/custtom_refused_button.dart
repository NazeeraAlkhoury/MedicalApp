import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomRefusedButton extends StatelessWidget {
  const CustomRefusedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 33.h,
      minWidth: 113.w,
      onPressed: () {},
      color: AppColors.redColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.37.r),
      ),
      child: Text(
        AppStrings.refuse.tr,
        style: Theme.of(context).textTheme.headline5!.copyWith(
              fontSize: 13.sp,
            ),
      ),
    );
  }
}

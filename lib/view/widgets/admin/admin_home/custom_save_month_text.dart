import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomSaveMonthText extends StatelessWidget {
  const CustomSaveMonthText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.savedMonth.tr,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: AppColors.accentColor,
            fontSize: 9.27.sp,
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontWeight: AppFontWeight.medium,
          fontSize: 40.sp,
          color: AppColors.blackColor,
          letterSpacing: 0.65,
        ),
        // Theme.of(context).textTheme.headline1,
        children: <TextSpan>[
          TextSpan(
            text: AppStrings.t.tr,
            style: TextStyle(
              fontWeight: AppFontWeight.medium,
              fontSize: 40.sp,
              color: AppColors.primaryColor,
              letterSpacing: 0.65,
            ),
            // Theme.of(context).textTheme.headline1!.copyWith(
            //       color: AppColors.primaryColor,
            //     ),
          ),
          TextSpan(
            text: AppStrings.ask.tr,
          ),
        ],
      ),
    );
  }
}

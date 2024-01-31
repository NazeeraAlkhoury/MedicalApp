import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomDiscountOptionalText extends StatelessWidget {
  const CustomDiscountOptionalText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: AppStrings.discount.tr,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 13.sp,
                ),
          ),
          TextSpan(
            text: AppStrings.optional.tr,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.orangeAccent,
                ),
          ),
        ],
      ),
    );
  }
}

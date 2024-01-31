import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomReasonOfRefusedCard extends StatelessWidget {
  const CustomReasonOfRefusedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.reasonRefuse.tr,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.redColor,
                  ),
            ),
            Text(
              'Fake payment',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.blackColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

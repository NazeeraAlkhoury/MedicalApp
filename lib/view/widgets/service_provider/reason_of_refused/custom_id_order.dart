import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomIdOrder extends StatelessWidget {
  const CustomIdOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Text(
          '#238215',
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 13.sp,
              ),
        ),
      ),
    );
  }
}

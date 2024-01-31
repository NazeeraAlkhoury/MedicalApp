import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomCostText extends StatelessWidget {
  const CustomCostText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$10,170',
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.whiteColor,
            fontSize: 37.9.sp,
          ),
    );
  }
}

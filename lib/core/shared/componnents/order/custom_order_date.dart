import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomOrderDate extends StatelessWidget {
  const CustomOrderDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '20 AUG At 1:00PM',
      style: Theme.of(context).textTheme.headline3!.copyWith(
            color: AppColors.secondaryColor,
            fontSize: 8.sp,
          ),
    );
  }
}

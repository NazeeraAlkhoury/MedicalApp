import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPointLocation extends StatelessWidget {
  const CustomPointLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.accentColor,
          radius: 60.r,
        ),
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 23.r,
        ),
        CircleAvatar(
          backgroundColor: AppColors.whiteColor,
          radius: 8.r,
        ),
      ],
    );
  }
}

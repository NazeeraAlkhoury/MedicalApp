import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';

class CustomReviewUserImage extends StatelessWidget {
  const CustomReviewUserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      radius: 54.r,
      child: Image.asset(
        AppImageAssets.profile,
        fit: BoxFit.contain,
        height: 105.h,
        width: 105.w,
      ),
    );
  }
}

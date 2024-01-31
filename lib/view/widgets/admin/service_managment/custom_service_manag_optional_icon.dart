import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomServiceManagmentOptionalIcon extends StatelessWidget {
  const CustomServiceManagmentOptionalIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.78.h,
      width: 16.78.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.71.r),
        color: AppColors.accentColor,
      ),
      padding: const EdgeInsets.all(4.61),
      child: SvgPicture.asset(AppIconAssets.iconmenue),
    );
  }
}

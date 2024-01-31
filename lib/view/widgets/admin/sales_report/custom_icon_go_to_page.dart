import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomIconGoToPage extends StatelessWidget {
  final Function()? onTap;
  final String icon;
  const CustomIconGoToPage({
    Key? key,
    this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 8.h,
        ),
        height: 28.h,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: AppColors.lightGreyColor,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

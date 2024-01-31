import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomNumberPageButton extends StatelessWidget {
  final Function()? onTap;
  final String number;
  final bool? isActive;
  const CustomNumberPageButton({
    Key? key,
    this.onTap,
    required this.number,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 5.w),
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 5.h,
        ),
        height: 28.h,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: isActive! ? AppColors.accentColor : AppColors.lightGreyColor,
        ),
        child: Text(
          number,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13.sp),
        ),
      ),
    );
  }
}

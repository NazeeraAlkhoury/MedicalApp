import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double? width;
  //final double? height;
  final double? font;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      this.width,
      required this.onPressed,
      // this.height,
      this.font});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width * 0.8,
      height: Get.height * 0.06,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // maximumSize: Size(Get.width, 50.h),
          //minimumSize: Size(width ?? Get.width * 0.8, Get.height * 0.055),
          //: Get.width * 0.45
          /// padding: EdgeInsets.symmetric(
          //  vertical: 10.h,
          //Get.height * 0.01,
          //),
          backgroundColor: AppColors.accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(95.r)),
        ),
        onPressed: onPressed,
        child: Text(
          text.tr,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: font ?? 20.sp,
              ),
          // getMediumTextStylePoppins(
          //   fontsize: font ?? 20.sp,
          //   color: AppColors.primaryColor,
          // ),
        ),
      ),
    );
  }
}

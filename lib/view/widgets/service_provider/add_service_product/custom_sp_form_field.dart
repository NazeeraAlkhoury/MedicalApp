import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomSpFormField extends StatelessWidget {
  final String hintText;
  final int? maxLine;
  final TextEditingController controller;
  const CustomSpFormField({
    Key? key,
    required this.hintText,
    this.maxLine = 1,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 8.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        fillColor: AppColors.lightGreyColor,
        filled: true,
        hintText: hintText.tr,
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: AppColors.greyColor,
              fontSize: 13.sp,
            ),
      ),
    );
  }
}

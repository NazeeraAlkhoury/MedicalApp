import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomBottomSheetTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? valid;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final void Function()? suffixFunction;
  final bool? isObscureText;
  const CustomBottomSheetTextFormField({
    super.key,
    required this.hintText,
    required this.textInputAction,
    required this.textInputType,
    this.suffixIcon,
    this.suffixFunction,
    this.isObscureText = false,
    this.valid,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.caption!.copyWith(height: 0.h),
      keyboardType: textInputType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        errorStyle: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: AppColors.redColor),
        suffixIcon: suffixIcon != null
            ? InkWell(
                onTap: suffixFunction,
                child: Icon(
                  suffixIcon,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 12.h,
        ),
        hintText: hintText.tr,
        hintStyle: Theme.of(context).textTheme.headline2!.copyWith(
              fontSize: 16.sp,
              color: AppColors.greyColor,
            ),
        filled: true,
        fillColor: AppColors.whiteColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.redColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.redColor,
          ),
        ),
      ),
      validator: valid,
      obscureText: isObscureText!,
    );
  }
}

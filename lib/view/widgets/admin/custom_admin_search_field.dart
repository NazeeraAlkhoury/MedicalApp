import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomAdminSearchField extends StatelessWidget {
  final String? hintText;
  const CustomAdminSearchField({
    Key? key,
    this.hintText = AppStrings.mdy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        hintText: hintText!.tr,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: 14.sp, color: AppColors.greyColor),
        contentPadding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 14.h),
        filled: true,
        fillColor: AppColors.whiteColor,
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 8.w),
          child: SvgPicture.asset(
            AppIconAssets.iconSearch,
            color: AppColors.primaryColor,
            height: 20.h,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}

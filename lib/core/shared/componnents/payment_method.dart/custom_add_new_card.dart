import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomAddNewCard extends StatelessWidget {
  const CustomAddNewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      style: Theme.of(context).textTheme.caption!.copyWith(
            color: AppColors.blackColor,
            fontSize: 16.sp,
          ),
      controller: TextEditingController(text: AppStrings.addNewCard.tr),
      decoration: InputDecoration(
        prefix: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppIconAssets.iconBasilEditOutline,
              color: AppColors.greyColor,
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        fillColor: AppColors.lightGreyColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 12.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.7.r),
          borderSide: BorderSide(
            color: AppColors.lightGreyColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.7.r),
          borderSide: BorderSide(
            color: AppColors.lightGreyColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';

class CustomVisaEditfield extends StatelessWidget {
  const CustomVisaEditfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //maxLength: 27,
      readOnly: true,

      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.whiteColor,
            fontSize: 16.sp,
          ),
      controller: TextEditingController(text: '****  2705'),
      decoration: InputDecoration(
        prefix: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppIconAssets.iconBasilEditOutline,
              color: AppColors.whiteColor,
            ),
            SizedBox(
              width: 5.w,
            ),
            SvgPicture.asset(AppImageAssets.imageVisaLogo),
            SizedBox(
              width: 40.w,
            ),
          ],
        ),
        suffix: Text(
          '05/27',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColors.whiteColor,
                fontSize: 11.sp,
              ),
        ),
        fillColor: AppColors.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 12.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.7.r),
        ),
      ),
    );
  }
}

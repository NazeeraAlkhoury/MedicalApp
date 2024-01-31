import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomPaymentMethField extends StatelessWidget {
  const CustomPaymentMethField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.blackColor,
            fontSize: 16.sp,
          ),
      controller: TextEditingController(text: '****  3423'),
      decoration: InputDecoration(
        prefix: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppIconAssets.iconBasilEditOutline,
              color: AppColors.greyColor,
            ),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              width: 22.w,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 8.r,
                    backgroundColor: AppColors.redColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.w),
                    child: CircleAvatar(
                      radius: 8.r,
                      backgroundColor: AppColors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40.w,
            ),
          ],
        ),
        suffix: Text(
          '04/24',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColors.blackColor,
                fontSize: 11.sp,
              ),
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

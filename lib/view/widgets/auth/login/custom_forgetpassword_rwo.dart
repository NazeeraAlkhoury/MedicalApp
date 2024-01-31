import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

import 'package:medical_app/core/functions/open_bottom_sheet_auth.dart';

import 'package:medical_app/view/widgets/auth/custom_text_underline_auth.dart';

class CustomForgetPasswordRwo extends StatelessWidget {
  const CustomForgetPasswordRwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIconAssets.iconCheckboxChecked),
        Padding(
          padding: EdgeInsets.only(left: 2.w),
          child: Text(
            AppStrings.rememberMe.tr,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            openBottomSheetAuth();
          },
          child: CustomTextUnderLineAuth(
            text: AppStrings.forgetPassword.tr.toUpperCase(),
          ),
        ),
      ],
    );
  }
}

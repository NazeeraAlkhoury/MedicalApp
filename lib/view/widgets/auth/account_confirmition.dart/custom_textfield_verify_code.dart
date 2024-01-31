import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/account_confirmation_controller.dart';

import 'package:medical_app/core/constants/app_colors.dart';

class CustomTextFieldVerifyCode extends StatelessWidget {
  const CustomTextFieldVerifyCode({super.key});
//GetView<AccountConfirmControllerImp>

  @override
  Widget build(BuildContext context) {
    AccountConfirmControllerImp controller =
        Get.find<AccountConfirmControllerImp>();
    return TextFormField(
      validator: ((val) {
        // if (val!.length != 8 || val.isEmpty) {
        //   print('notvalid');
        // } else {
        //   print('valid');
        // }

        return null;
      }),
      controller: controller.codeController,
      keyboardType: TextInputType.text,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 13.h,
        ),
        border: InputBorder.none,
        fillColor: controller.isVal
            ? AppColors.lightGreyColor
            : AppColors.pinkAccentColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.pinkAccentColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        // errorText: AppStrings.incorrectCode,
        // errorStyle: getMediumTextStylePoppins(
        //   fontsize: 11.sp,
        //   color: AppColors.redColor,
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/auth/bottomSheet/costum_bottomsheet_forget_verifycode_reset.dart';

Future<dynamic> openBottomSheetAuth() {
  return Get.bottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
    ),
    const CustomBottomSheetForgetVerifCode(),
  );
}

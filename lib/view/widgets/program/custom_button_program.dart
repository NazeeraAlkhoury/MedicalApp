import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/program_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomButtonProgram extends GetView<ProgramControllerImp> {
  const CustomButtonProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.36,
      height: Get.height * 0.049,
      child: ElevatedButton(
        onPressed: () {
          controller.goToLogin();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.r),
          ),
        ),
        child: Text(
          AppStrings.getstarted.tr,
          style: TextStyle(
            fontWeight: AppFontWeight.medium,
            fontSize: 14.sp,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

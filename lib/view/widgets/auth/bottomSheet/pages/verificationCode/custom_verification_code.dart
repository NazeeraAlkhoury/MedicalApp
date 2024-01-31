import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_body_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_title_text.dart';
import 'package:medical_app/view/widgets/auth/bottomSheet/pages/verificationCode/costum_otp.dart';

class CustomVerificationCode extends StatelessWidget {
  const CustomVerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBottomSheetTitleText(text: AppStrings.enteryourCode),
            SizedBox(
              height: Get.height * 0.013,
            ),
            const CustomBottomSheetBodyText(
              text: AppStrings.descreptionverificationCode,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 28.w,
                left: 28.w,
                top: 30.h,
                bottom: 30.h,
              ),
              child: const CustomOTP(),
            ),
          ],
        ),
      ),
    );
  }
}

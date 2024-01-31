import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomOTP extends StatelessWidget {
  const CustomOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.067,
      width: Get.width * 0.9,
      child: OtpTextField(
        textStyle: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 26.sp,
              color: AppColors.primaryColor,
            ),

        filled: true,
        numberOfFields: 4,
        fieldWidth: 50.h,
        fillColor: AppColors.whiteColor,
        borderColor: HexColor('#677294').withOpacity(.16),
        enabledBorderColor: HexColor('#677294').withOpacity(.16),
        focusedBorderColor: HexColor('#677294').withOpacity(.16),
        disabledBorderColor: HexColor('#677294').withOpacity(.16),

        borderRadius: BorderRadius.circular(12.r),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {},
      ),
    );
  }
}

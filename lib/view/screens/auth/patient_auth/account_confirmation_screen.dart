import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/account_confirmation_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/auth/account_confirmition.dart/custom_incorrect_code_text.dart';
import 'package:medical_app/view/widgets/auth/account_confirmition.dart/custom_recive_code_description.dart';
import 'package:medical_app/view/widgets/auth/account_confirmition.dart/custom_verify_code.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/custom_text_underline_auth.dart';
import 'package:medical_app/view/widgets/auth/account_confirmition.dart/custom_textfield_verify_code.dart';

class AccountConfirmationScreen extends StatelessWidget {
  const AccountConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AccountConfirmControllerImp controller =
        Get.put(AccountConfirmControllerImp());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          left: 20.w,
          right: 20.w,
        ),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomNavArrow(),
              const Center(
                child: CustomVerifyCodeText(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                  bottom: 85.h,
                ),
                child: const CustomReciveCodeDescription(),
              ),
              GetBuilder<AccountConfirmControllerImp>(builder: (controller) {
                if (controller.isVal = false) {
                  return const CustomIncorrectCodeText();
                } else {
                  return const Text('');
                }
              }),
              const CustomTextFieldVerifyCode(),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 5.h,
                    bottom: 15.h,
                  ),
                  child: const CustomTextUnderLineAuth(
                    text: AppStrings.resendCode,
                  ),
                ),
              ),
              Center(
                child: CustomElevatedButton(
                  text: AppStrings.verify,
                  onPressed: () {
                    controller.verificationCode();
                  },
                  font: 18.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

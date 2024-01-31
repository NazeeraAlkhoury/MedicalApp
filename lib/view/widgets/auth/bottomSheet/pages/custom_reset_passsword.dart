import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/bottomsheet_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/functions/validate_input.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_body_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_title_text.dart';
import 'package:medical_app/view/widgets/auth/bottomSheet/custom_bottomsheet_text_form_field.dart';

class CustomResetPassword extends StatelessWidget {
  const CustomResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    BottomSheetControllerImp controller = Get.find<BottomSheetControllerImp>();
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: controller.resetPassKey,
          child: Column(
            children: [
              const CustomBottomSheetTitleText(text: AppStrings.resetPassword),
              SizedBox(height: Get.height * 0.013),
              const CustomBottomSheetBodyText(
                  text: AppStrings.descriptionResetPassword),
              SizedBox(height: Get.height * 0.04),
              Padding(
                padding: EdgeInsets.only(
                  right: 28.w,
                  left: 28.w,
                  bottom: 15.h,
                ),
                child:
                    GetBuilder<BottomSheetControllerImp>(builder: (controller) {
                  return CustomBottomSheetTextFormField(
                    controller: controller.newPassController,
                    hintText: AppStrings.newPassword,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.visiblePassword,
                    isObscureText: controller.isshowpassword,
                    suffixIcon: controller.isshowpassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    suffixFunction: () {
                      controller.showPassword();
                    },
                    valid: (String? val) =>
                        validateInput(val!, 8, 20, 'password'),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 28.w,
                  left: 28.w,
                  bottom: 35.h,
                ),
                child:
                    GetBuilder<BottomSheetControllerImp>(builder: (controller) {
                  return CustomBottomSheetTextFormField(
                    controller: controller.confirmNewPassController,
                    hintText: AppStrings.confirmNewPassword,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    isObscureText: controller.isConfirmNewshowpass,
                    suffixIcon: controller.isConfirmNewshowpass
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    suffixFunction: () {
                      controller.showConfNewPassword();
                    },
                    valid: (String? val) =>
                        validateInput(val!, 8, 20, 'password'),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

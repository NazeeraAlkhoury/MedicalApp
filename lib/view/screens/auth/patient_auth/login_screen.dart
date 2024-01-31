import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_login_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

import 'package:medical_app/core/functions/validate_input.dart';

import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_first_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_second_top.dart';
import 'package:medical_app/view/widgets/auth/login/custom_forgetpassword_rwo.dart';
import 'package:medical_app/view/widgets/auth/login/custom_or_divider_login.dart';

import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/login/custom_signin_or_signup.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/login/custom_text_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PatientLoginControllerImp loginController =
        Get.put(PatientLoginControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const CustomPaintSecondTop(),
                    const CustomPaintFirstTop(),
                    SingleChildScrollView(
                      child: Form(
                        key: loginController.formKey,
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 24.w,
                            end: 24.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: Get.width * 0.76),
                              const CustomTextLogin(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20.h,
                                ),
                                child: const CustomRichTextTitleField(
                                    text: AppStrings.email),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 6.h,
                                  bottom: 10.h,
                                ),
                                child: CustomTextFormField(
                                  textController:
                                      loginController.emailController,
                                  hintText: AppStrings.email,
                                  textInputType: TextInputType.emailAddress,
                                  validat: (String? val) {
                                    return validateInput(val!, 15, 28, 'email');
                                  },
                                ),
                              ),
                              const CustomRichTextTitleField(
                                  text: AppStrings.password),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 6.h,
                                ),
                                child: CustomTextFormField(
                                  textController:
                                      loginController.passwordController,
                                  hintText: AppStrings.password,
                                  textInputType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.done,
                                  onSubmitted: (p0) {
                                    loginController.login();
                                  },
                                  validat: (String? val) {
                                    return validateInput(
                                        val!, 8, 20, 'password');
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.h),
                                child: const CustomForgetPasswordRwo(),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: const CustomOrDividerLogin(),
                              ),
                              const CustomSignInOrSignUp(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 10.w,
                        top: 35.h,
                      ),
                      child: CustomNavArrow(
                        color: AppColors.accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 16.h),
              child: Stack(
                children: [
                  const CustomPaintAppBottom(),
                  Positioned(
                    left: 20.w,
                    bottom: 0.h,
                    child: SvgPicture.asset(
                      AppImageAssets.imageUndrawForgotPassword,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

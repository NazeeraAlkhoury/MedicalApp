import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_information_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

import 'package:medical_app/core/functions/validate_input.dart';

import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';
import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paint_app_top_auth.dart';

import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/information/custom_information_title_text.dart';

class PatientInformationScreen extends StatelessWidget {
  const PatientInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(() => PatientInformationControllerImp());
    PatientInformationControllerImp controller =
        Get.put(PatientInformationControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const CustomPaintAppTopAuth(),
                    SingleChildScrollView(
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.22,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomInformationTitleText(
                                  text: AppStrings.patientInformation),
                            ),
                            SizedBox(
                              height: Get.height * 0.023,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.firstName),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.firstNameController,
                                hintText: AppStrings.firstName,
                                textInputType: TextInputType.name,
                                validat: (String? val) {
                                  return validateInput(val!, 3, 10, 'username');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.lastName),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.lastNameController,
                                hintText: AppStrings.lastName,
                                textInputType: TextInputType.name,
                                validat: (String? val) {
                                  return validateInput(val!, 3, 10, 'username');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.email),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.emailController,
                                hintText: AppStrings.email,
                                textInputType: TextInputType.emailAddress,
                                validat: (String? val) {
                                  return validateInput(val!, 13, 28, 'email');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.password),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.passwordController,
                                hintText: AppStrings.password,
                                textInputType: TextInputType.visiblePassword,
                                validat: (String? val) {
                                  return validateInput(val!, 8, 20, 'password');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.confirmPassword),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                              ),
                              child: CustomTextFormField(
                                textController:
                                    controller.confirmPasswordController,
                                hintText: AppStrings.confirmPassword,
                                textInputType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                validat: (String? val) {
                                  return validateInput(val!, 8, 20, 'password');
                                },
                              ),
                            ),
                            Stack(
                              children: [
                                const CustomPaintAppBottom(),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 90.w,
                                    top: 30.h,
                                  ),
                                  child: CustomElevatedButton(
                                    text: AppStrings.next,
                                    width: Get.width * 0.45,
                                    font: 15.22.sp,
                                    onPressed: () {
                                      controller.next();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 10.w,
                        top: 35.h,
                      ),
                      child: const CustomNavArrow(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

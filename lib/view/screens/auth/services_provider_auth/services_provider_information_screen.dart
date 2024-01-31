// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:medical_app/controller/auth_controllers/serviceprovider_controllers/services_provider_information_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/functions/validate_input.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';

import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paint_app_top_auth.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/information/custom_certificate_sp_text.dart';
import 'package:medical_app/view/widgets/auth/information/custom_information_title_text.dart';

class ServicesProviderInformationScreen extends StatelessWidget {
  const ServicesProviderInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceProvidInformControllerImp controller =
        Get.put(ServiceProvidInformControllerImp());
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
                              height: Get.height * 0.211,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomInformationTitleText(
                                text: AppStrings.servicesProvidInfo,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.033,
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
                                  return validateInput(
                                      val!, 3, 10, 'firstname');
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
                                  return validateInput(val!, 2, 10, 'lastname');
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
                                  return validateInput(val!, 14, 28, 'email');
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
                                bottom: 10.h,
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
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.bankAcountDetails),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.bankNameController,
                                hintText: AppStrings.bankName,
                                textInputType: TextInputType.name,
                                validat: (String? val) {
                                  return validateInput(val!, 3, 20, 'username');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.ibanNumberController,
                                hintText: AppStrings.ibanNumber,
                                textInputType: TextInputType.number,
                                validat: (String? val) {
                                  return validateInput(val!, 3, 10, 'number');
                                },
                              ),
                            ),
                            Container(
                              height: 300.h,
                              margin: EdgeInsets.only(
                                top: 10.h,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(top: 15.h),
                                    child: const CustomPaintAppBottom(),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 24.w,
                                      end: 24.w,
                                      top: 6.h,
                                      bottom: 10.h,
                                    ),
                                    child: CustomTextFormField(
                                      textController:
                                          controller.swiftCodeController,
                                      hintText: AppStrings.swiftCode,
                                      textInputType: TextInputType.number,
                                      validat: (String? val) {
                                        return validateInput(
                                            val!, 3, 10, 'number');
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 24.w,
                                      top: 70.h,
                                    ),
                                    child: const CustomRichTextTitleField(
                                        text: AppStrings.evidencePDF),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 40.w,
                                      top: 90.h,
                                    ),
                                    child: const CustomCertificateSpText(),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 24.w,
                                      end: 24.w,
                                      top: 125.h,
                                    ),
                                    child: GetBuilder<
                                        ServiceProvidInformControllerImp>(
                                      builder: (controller) =>
                                          CustomTextFormField(
                                        readOnly: true,
                                        suffixIcon:
                                            AppIconAssets.iconUploadFile,
                                        suffixFunction: () {
                                          controller.pickFile();
                                        },
                                        textController:
                                            controller.uploadPdfController,
                                        hintText:
                                            // controller.selectedFile.value !=
                                            //         null
                                            //     ? controller
                                            //         .selectedFile.value!.path
                                            //         .split('/')
                                            //         .last
                                            //     :
                                            AppStrings.uploadPdf.tr
                                                .toUpperCase(),
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.done,
                                        validat: (String? val) {
                                          return validateInput(
                                              val!, 5, val.length, 'pdfFile');
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 105.w,
                                      end: 105.w,
                                      top: 200.h,
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

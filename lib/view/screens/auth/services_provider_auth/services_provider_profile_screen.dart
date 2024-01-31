import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/serviceprovider_controllers/service_provider_profile_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

import 'package:medical_app/core/functions/validate_input.dart';

import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';

import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paint_app_top_auth.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_buttom_part_profile.dart';
import 'package:medical_app/core/shared/componnents/custom_edit_profile_button.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';

import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_text_profile.dart';

class ServicesProviderProfileScreen extends StatelessWidget {
  const ServicesProviderProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SProviderProfileControllerImp controller =
        Get.put(SProviderProfileControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const CustomPaintAppTopAuth(),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 115.h,
                      ),
                      child: const Center(
                        child:
                            CustomTextProfile(text: AppStrings.completeProfile),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 140.h, right: 22.h),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: CustomEditProfileButton(),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.26,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                              ),
                              child: const CustomRichTextTitleField(
                                  text: AppStrings.userName),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.userName,
                                hintText: AppStrings.userName,
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
                                textController: controller.email,
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
                                  text: AppStrings.editPassword),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.editPassword,
                                hintText: AppStrings.newPassword,
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
                                  text: AppStrings.bankAccount),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 24.w,
                                end: 24.w,
                                top: 6.h,
                                bottom: 10.h,
                              ),
                              child: CustomTextFormField(
                                textController: controller.bankAccount,
                                hintText: '**** 2385',
                                textInputType: TextInputType.number,
                                validat: (String? val) {
                                  return validateInput(val!, 14, 20, 'number');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 90.w,
                                top: 25.h,
                              ),
                              child: CustomElevatedButton(
                                text: AppStrings.done,
                                width: Get.width * 0.45,
                                font: 15.22.sp,
                                onPressed: () {
                                  controller.editeSProviderProfile();
                                },
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
          const SliverToBoxAdapter(
            child: CustomButtomProfile(),
          ),
        ],
      ),
    );
  }
}
 // SliverToBoxAdapter(
          //   child: Container(
          //     height: 170.h,
          //     margin: EdgeInsetsDirectional.only(top: 10.h),
          //     child: Stack(
          //       children: [
          //         const CustomPaintAppBottom(),
          //         PositionedDirectional(
          //           end: 40.w,
          //           bottom: 30.h,
          //           child: SvgPicture.asset(
          //             AppImageAssets.imageUndrawPersonalInformationRe1,
          //             // height: 120.h,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
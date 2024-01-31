import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_profile_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/functions/validate_input.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paint_app_top_auth.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_buttom_part_profile.dart';
import 'package:medical_app/core/shared/componnents/custom_edit_profile_button.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_patient_picture_profile.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_text_profile.dart';

class PatientProfileScreen extends StatelessWidget {
  const PatientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PatientProfileControllerImp controller =
        Get.put(PatientProfileControllerImp());
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
                        start: 10.w,
                        top: 30.h,
                      ),
                      child: const CustomNavArrow(),
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.07,
                          ),
                          SizedBox(
                            width: Get.width * 0.23,
                            child: const CustomPatientPictureProfile(),
                          ),
                          SizedBox(
                            height: Get.height * 0.009,
                          ),
                          const CustomTextProfile(
                            text: AppStrings.completeProfile,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 30.w,
                            ),
                            child: const Align(
                                alignment: Alignment.bottomRight,
                                child: CustomEditProfileButton()),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        top: 235.h,
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: controller.formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    return validateInput(
                                        val!, 3, 20, 'username');
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
                                  textInputAction: TextInputAction.done,
                                  validat: (String? val) {
                                    return validateInput(
                                        val!, 8, 20, 'password');
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
                                    controller.editePatientProfile();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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

      //  Container(
            //   // height: 200.h,
            //   margin: EdgeInsetsDirectional.only(top: 30.h),
            //   child: Stack(
            //     children: [
            //       const CustomPaintAppBottom(),
            //       Padding(
            //         // end: 40.w,
            //         // bottom: 30.h,
            //         padding: EdgeInsetsDirectional.only(
            //           start: 100.w,
            //           //bottom: 50.h,
            //         ),
            //         child: SvgPicture.asset(
            //           AppImageAssets.imageUndrawPersonalInformationRe1,
            //           height: 130.h,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
//  body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: SizedBox(
//           height: Get.height,
//           child: Stack(
//             children: [
//               const CustomPaintAppTop(),
//               Positioned(
//                 left: 10.w,
//                 top: 35.h,
//                 child: const CustomNavArrowLeft(),
//               ),
//               Positioned(
//                   left: 120.w,
//                   top: 85.h,
//                   child: SvgPicture.asset(AppImageAssets.imageEllipse149)),
//               Positioned(
//                 left: 194.w,
//                 top: 140.h,
//                 child: CircleAvatar(
//                   radius: 12.r,
//                   backgroundColor: AppColors.lightGreyColor,
//                   child: SvgPicture.asset(AppIconAssets.iconCamera),
//                 ),
//               ),
//               Positioned(
//                   top: 183.h,
//                   left: 80.w,
//                   child: Text(
//                     AppStrings.completeProfile.toUpperCase(),
//                     style: Theme.of(context).textTheme.headline5,
//                   )),
//               Positioned(
//                 right: 22.w,
//                 top: 196.h,
//                 child: SvgPicture.asset(AppIconAssets.iconBasilEditOutline),
//               ),
//               Positioned(bottom: 0.h, child: const CustomPaintAppBottom()),
//               Positioned(
//                 right: 20.w,
//                 bottom: 20.h,
//                 child: SvgPicture.asset(
//                     AppImageAssets.imageUndrawPersonalInformationRe1),
//               ),
//               Positioned(
//                 top: 225.h,
//                 left: 20.w,
//                 child: const CustomPatientProfileForm(),
//               ),
//             ],
//           ),
//         ),
//       ),


     // Positioned(
                    //     left: 120.w,
                    //     top: 75.h,
                    //     child:
                    //         SvgPicture.asset(AppImageAssets.imageEllipse149)),
                    // Positioned(
                    //   left: 194.w,
                    //   top: 130.h,
                    //   child: CircleAvatar(
                    //     radius: 12.r,
                    //     backgroundColor: AppColors.lightGreyColor,
                    //     child: SvgPicture.asset(AppIconAssets.iconCamera),
                    //   ),
                    // ),
                    // Positioned(
                    //   top: 173.h,
                    //   left: 80.w,
                    //   child: Text(
                    //     AppStrings.completeProfile.toUpperCase(),
                    //     style: Theme.of(context).textTheme.headline5,
                    //   ),
                    // ),
                    // Positioned(
                    //   right: 22.w,
                    //   top: 186.h,
                    //   child: InkWell(
                    //       child: SvgPicture.asset(
                    //           AppIconAssets.iconBasilEditOutline)),
                    // ),
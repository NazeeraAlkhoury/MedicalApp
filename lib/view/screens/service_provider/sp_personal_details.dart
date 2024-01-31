import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/core/shared/componnents/custom_welcom_rich_text.dart';

class SpPersonalDetailes extends StatelessWidget {
  const SpPersonalDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutControllerImp controller = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.085,
                      ),
                      SizedBox(
                        width: Get.width * 0.23,
                        //                   child: const CustomPatientPictureProfile(),
                      ),
                      SizedBox(
                        height: Get.height * 0.005,
                      ),
                      const CostomWelcomRichText(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 30.h,
                  ),
                  child: const CustomNavArrow(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
              start: 24.w,
              end: 24.w,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const CustomRichTextTitleField(text: AppStrings.userName),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController:
                          TextEditingController(text: 'Nazeera Alkhouri'),
                      hintText: AppStrings.userName,
                      textInputType: TextInputType.name,
                      //validat: (String? val) {},
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.email),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController:
                          TextEditingController(text: 'Nazeera@gmail.com'),
                      hintText: AppStrings.email,
                      textInputType: TextInputType.emailAddress,
                      // validat: (String? val) {},
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.bankAccount),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController: TextEditingController(text: '**** 2385'),
                      hintText: '**** 2385',
                      textInputType: TextInputType.name,
                      //  validat: (String? val) {},
                      // isObscureText: true,
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.editPassword),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController: TextEditingController(),
                      hintText: AppStrings.password,
                      textInputType: TextInputType.visiblePassword,
                      // validat: (String? val) {},
                      isObscureText: true,
                    ),
                  ),
                  Center(
                    child: CustomAppButton(
                      text: AppStrings.save,
                      onPressed: () {
                        controller.changePage(5, 3);
                      },
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

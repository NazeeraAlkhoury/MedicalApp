import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/review_registeration_requests_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_image.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_name_text.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';
import 'package:medical_app/view/widgets/auth/information/custom_certificate_sp_text.dart';

class ReviewRegisterationRequestsScreen extends StatelessWidget {
  const ReviewRegisterationRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ReviewRegisterRequestsControllerImp controller =
        Get.put(ReviewRegisterRequestsControllerImp());
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
                        height: Get.height * 0.1,
                      ),
                      const CustomReviewUserImage(),
                      SizedBox(
                        height: Get.height * 0.007,
                      ),
                      const CustomReviewUserNameText(),
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
                      bottom: 13.h,
                    ),
                    child: CustomTextFormField(
                      textController: TextEditingController(text: '**** 2385'),
                      hintText: '**** 2385',
                      textInputType: TextInputType.name,
                      //  validat: (String? val) {},
                      // isObscureText: true,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomRichTextTitleField(
                              text: AppStrings.evidencePDF),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              start: 40.w,
                              top: 5.h,
                            ),
                            child: const CustomCertificateSpText(),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIconAssets.iconPdf),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.075,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAppButton(
                        text: AppStrings.accept,
                        color: AppColors.greenColor,
                        onPressed: () {
                          controller.goToRegisterationaccepted();
                        },
                      ),
                      SizedBox(
                        width: Get.width * 0.13,
                      ),
                      CustomAppButton(
                        text: AppStrings.refuse,
                        color: AppColors.redColor,
                        onPressed: () {
                          controller.goToRegisterationRefused();
                        },
                      ),
                    ],
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

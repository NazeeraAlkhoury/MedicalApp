import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/validite_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/custom_checkbox_card.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_image.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_name_text.dart';

class ValidityScreen extends StatelessWidget {
  const ValidityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ValiditeControllerImp());
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
                        height: Get.height * 0.08,
                      ),
                      const Center(
                        child: CustomAdminTitleText(
                          title: AppStrings.powersManagement,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.018,
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GetBuilder<ValiditeControllerImp>(builder: (controller) {
                  return CustomCheckBoxCard(
                    title: controller.titleList[index],
                    color: AppColors.primaryColor,
                    isCheck: controller.checkList[index],
                    onChanged: ((value) {
                      controller.onChanged(index);
                    }),
                  );
                });
              },
              childCount: 4,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 80.h,
            ),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: CustomAppButton(
                  text: AppStrings.save,
                  onPressed: (() {}),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

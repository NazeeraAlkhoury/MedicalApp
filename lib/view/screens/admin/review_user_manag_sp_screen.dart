import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/review_user_man_sp_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_detail_card.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/custom_checkbox_card.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_order_count_card.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_image.dart';
import 'package:medical_app/core/shared/componnents/custom_edit_profile_button.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_user_name_text.dart';

class ReviewUserManagSpScreen extends StatelessWidget {
  const ReviewUserManagSpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReviewUserManSpControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
                    const Center(
                      child: CustomAdminTitleText(
                        title: AppStrings.userManagement,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const CustomReviewUserImage(),
                    SizedBox(
                      height: Get.height * 0.007,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: Get.width * 0.25,
                        ),
                        const CustomReviewUserNameText(),
                        SizedBox(
                          width: Get.width * 0.2,
                        ),
                        CustomEditProfileButton(
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
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
            delegate: SliverChildListDelegate([
              const CustomDetailCard(text: 'ramakhaled@gmail.com'),
              const CustomDetailCard(text: '0536386957'),
              const CustomDetailCard(
                  text: 'Riyadh, Al-Falah neighborhood, Ad Dahyah Street'),
              const CustomDetailCard(text: 'Joined on 5 june 2023'),
            ]),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            childAspectRatio: 1 / 0.8,
            children: const [
              CustomreviewOrderCountCard(
                orderState: AppStrings.totalOrder,
                count: '70',
              ),
              CustomreviewOrderCountCard(
                orderState: AppStrings.completed,
                count: '45',
              ),
              CustomreviewOrderCountCard(
                orderState: AppStrings.cancelled,
                count: '25',
              ),
            ],
          ),
          GetBuilder<ReviewUserManSpControllerImp>(builder: (controller) {
            return SliverList(
              delegate: SliverChildListDelegate([
                CustomCheckBoxCard(
                  title: AppStrings.activeSpAccount,
                  color: AppColors.greenColor,
                  isCheck: controller.isAct,
                  onChanged: (value) {
                    controller.onChangedActiveAccount(value);
                  },
                ),
                CustomCheckBoxCard(
                  title: AppStrings.deActiveSpAccount,
                  color: AppColors.redColor,
                  isCheck: controller.isDeAct,
                  onChanged: (value) {
                    controller.onChangedDeActiveAccount(value);
                  },
                ),
              ]),
            );
          }),
        ],
      ),
    );
  }
}

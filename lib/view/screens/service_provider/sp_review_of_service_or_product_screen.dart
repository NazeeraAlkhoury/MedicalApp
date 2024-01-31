import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/home/custom_build_products.dart';
import 'package:medical_app/core/shared/componnents/home/custom_hi_user_text.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_title_text.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_my_pic.dart';

import 'package:medical_app/view/widgets/service_provider/home/custom_add_serv_pro_row.dart';

class SpReviewServicsOrProdScreen extends StatelessWidget {
  const SpReviewServicsOrProdScreen({super.key});

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
                const CustomPaintAppCircularTop(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.055,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CustomHiUserText(),
                              CustomHomeTitleText(
                                text: AppStrings.postService,
                              ),
                            ],
                          ),
                          const CustomHomeMyPic(),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: Get.height * 0.0672,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: AppColors.shadowColor,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            //  controller.goToAddServiceProduct();
                          },
                          child: const CustomAddSeviceProductRow(
                            text: AppStrings.addServiceOrProd,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              right: 20.w,
              left: 20.w,
              bottom: 15.h,
            ),
            sliver: CustomBuildProducts(
              onPressed: () {
                controller.changePage(9, 0);
              },
            ),
          ),
        ],
      ),
    );
  }
}

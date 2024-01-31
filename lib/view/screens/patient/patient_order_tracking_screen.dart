import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/patient/custom_image_top.dart';
import 'package:medical_app/view/widgets/patient/home/custom_title_text.dart';

class PatientOrderTrackingScreen extends StatelessWidget {
  const PatientOrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutControllerImp layoutController = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
                      const CustomImageTop(
                          imageAssest: AppImageAssets.imageBikRide),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      const CustomTiltleText(text: AppStrings.orderTracking),
                    ],
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
          ),
          SliverToBoxAdapter(
            child: Container(
              height: Get.height * 0.3387,
              margin: EdgeInsets.only(
                right: 50.w,
                left: 50.w,
                top: 15.h,
                bottom: 50.h,
              ),
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                color: AppColors.greyaccentColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(AppImageAssets.map2),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: CustomAppButton(
                text: AppStrings.goOrders,
                onPressed: (() {
                  layoutController.changePage(7, 2);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

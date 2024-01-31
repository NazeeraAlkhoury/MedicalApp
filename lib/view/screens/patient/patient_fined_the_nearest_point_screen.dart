import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/custom_search_field.dart';
import 'package:medical_app/core/shared/componnents/location/custom_location_title.dart';
import 'package:medical_app/core/shared/componnents/location/custom_point_location.dart';

class PatientFinedTheNearestScreen extends StatelessWidget {
  const PatientFinedTheNearestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Image.asset(
                  AppImageAssets.map,
                  fit: BoxFit.fill,
                ),
                const CustomPaintAppCircularTop(),
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.087,
                    ),
                    const CustomLocationTitle(
                      text: AppStrings.selectNearestPoint,
                    ),
                    SizedBox(
                      height: Get.height * 0.048,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const CustomSearchField(
                        isNearest: true,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 35.h,
                  ),
                  child: CustomNavArrow(
                    color: AppColors.accentColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300.h, left: 70.w),
                  child: const CustomPointLocation(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 20.h,
                    top: Get.height - Get.height * 0.19,
                  ),
                  child: CustomAppButton(
                    text: AppStrings.save.tr,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

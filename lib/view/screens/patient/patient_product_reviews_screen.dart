import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/controller/patient_controller/patient_product_reviews_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/review/custom_availables_times_text.dart';
import 'package:medical_app/data/datasource/static/patient/product_services_static.dart';
import 'package:medical_app/view/widgets/patient/product_review.dart/custom_available_dates.dart';
import 'package:medical_app/view/widgets/patient/product_review.dart/custom_available_times.dart';
import 'package:medical_app/core/shared/componnents/review/custom_product_details.dart';
import 'package:medical_app/view/widgets/patient/product_review.dart/custom_today_date_text.dart';

class PatientProductReviewsScreen extends StatelessWidget {
  const PatientProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.put(PaProductReviewsControllerImp());
    Get.lazyPut(() => PaProductReviewsControllerImp(), fenix: true);
    LayoutControllerImp layoutController = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                CustomPaintAppTop(
                  myColor: AppColors.primaryColor,
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
                  padding: EdgeInsets.only(
                    top: Get.height * 0.104,
                  ),
                  child: Center(
                    child: CustomProductDetails(
                      model: productServiceList[1],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 10.h,
              left: 20.w,
            ),
            sliver: const SliverToBoxAdapter(
              child: CustomAvaiableDates(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: 10.h,
            ),
            sliver: const SliverToBoxAdapter(
              child: CustomTodayDateText(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
              bottom: 10.h,
              start: 20.w,
            ),
            sliver: const SliverToBoxAdapter(
              child: CustomAvailableTimesText(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.w, right: 30.w, bottom: 20.h),
            sliver: const CustomAvailablesTime(),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: CustomAppButton(
                text: AppStrings.reservation,
                onPressed: () {
                  layoutController.changePage(5, 2);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

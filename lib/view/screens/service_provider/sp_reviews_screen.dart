import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_product_reviews_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/review/custom_availables_times_text.dart';
import 'package:medical_app/data/datasource/static/patient/product_services_static.dart';
import 'package:medical_app/core/shared/componnents/review/custom_product_details.dart';
import 'package:medical_app/view/widgets/service_provider/reviews/custom_sp_available_times.dart';
import 'package:medical_app/view/widgets/service_provider/reviews/custom_sp_builder_date.dart';

class SpReviewsScreen extends StatelessWidget {
  const SpReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PaProductReviewsControllerImp());
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              CustomPaintAppTop(
                myColor: AppColors.primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Get.height * 0.104,
                ),
                child: Center(
                  child: CustomProductDetails(
                    model: productServiceList[1],
                    isSp: true,
                  ),
                ),
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
            child: CustomSpBuilderDate(),
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
          sliver: const CustomSpAvailableTimes(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_detail_card.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/review_user_manegment/custom_review_order_count_card.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_order_refused_details.dart';

class ServiceManagmentReviewScreen extends StatelessWidget {
  const ServiceManagmentReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 60.h,
                  ),
                  child: const Center(
                      child: CustomAdminTitleText(
                          title: AppStrings.serviceManagement)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 30.h,
                  ),
                  child: const Center(
                    child: CustomOrderRefusedDetails(),
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
          SliverList(
            delegate: SliverChildListDelegate([
              const CustomDetailCard(text: '#238215'),
              const CustomDetailCard(text: 'Created on 21 May 2021'),
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
        ],
      ),
    );
  }
}

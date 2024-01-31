import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_detail_card.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/manage_reservation/custom_reason_refused_card.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_order_refused_details.dart';

class ManageReservationReviewScreen extends StatelessWidget {
  const ManageReservationReviewScreen({super.key});

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
              const CustomDetailCard(text: 'Ordered on 20 AUG 2021 At 1:00PM'),
              CustomDetailCard(
                text: 'Rejected On 20 AUG 2021 At 3:00PM',
                color: AppColors.redColor,
              ),
              const CustomReasonOfRefusedCard()
            ]),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_detail_card.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_order_text.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_id_order.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_order_refused_details.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_reason_refused.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custtom_refused_button.dart';

class SpReasonRefusedScreen extends StatelessWidget {
  const SpReasonRefusedScreen({super.key});

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
                  child: const Center(child: CustomOrderText()),
                ),
                const Center(
                  child: CustomOrderRefusedDetails(),
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
            delegate: SliverChildListDelegate(
              const [
                CustomIdOrder(),
                CustomDetailCard(
                  text: 'Ordered on 20 AUG 2021 At 1:00PM',
                ),
                CustomReasonRefused(),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 40.h,
            ),
            sliver: const SliverToBoxAdapter(
              child: Center(
                child: CustomRefusedButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

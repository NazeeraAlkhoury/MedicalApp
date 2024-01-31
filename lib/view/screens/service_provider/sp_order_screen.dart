import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/sp_order_controller.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_order_stepper.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_order_text.dart';

class SpOrderScreen extends StatelessWidget {
  const SpOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SpOrderControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 35.h,
                  ),
                  child: const CustomNavArrow(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.09,
                    ),
                    const Center(
                      child: CustomOrderText(),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const CustomOrdersStepper(),
                    SizedBox(
                      height: Get.height * 0.002,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: GetBuilder<SpOrderControllerImp>(
                          builder: (controller) {
                        return controller.ordersList
                            .elementAt(controller.currentStep);
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

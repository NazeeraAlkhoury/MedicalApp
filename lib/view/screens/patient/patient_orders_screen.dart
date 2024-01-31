import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_orders_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/data/datasource/static/serv_prod_order_static.dart';
import 'package:medical_app/view/widgets/patient/home/custom_title_text.dart';
import 'package:medical_app/core/shared/componnents/orders/custom_builder_orders.dart';

class PatientOrdersScreen extends StatelessWidget {
  const PatientOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PatientOrdersControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: Get.height * 0.1,
                  ),
                  child: const Center(
                      child: CustomTiltleText(text: AppStrings.myOrders)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Get.height * 0.2,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: CustomBuilderOrders(
                    currentData: servProdOrderList,
                    onPressed: () {},
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
        ],
      ),
    );
  }
}

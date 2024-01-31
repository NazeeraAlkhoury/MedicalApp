import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/patient/custom_image_top.dart';
import 'package:medical_app/view/widgets/patient/home/custom_title_text.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_add_new_card.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_ayment_method_field.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_visa_edit_field.dart';

class SpPaymentMethodScreen extends StatelessWidget {
  const SpPaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // LayoutControllerImp layoutControoler = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: Get.height * 0.08,
                      ),
                      const CustomImageTop(
                        imageAssest: AppImageAssets.imageCridtCard,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      const CustomTiltleText(
                        text: AppStrings.paymentMethod,
                      ),
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
          SliverPadding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 30.h, bottom: 80.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const CustomVisaEditfield(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const CustomPaymentMethField(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const CustomAddNewCard()
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
                child: CustomAppButton(
                    text: AppStrings.save,
                    onPressed: () {
                      //layoutControoler.changePage(3, 3);
                    })),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_reservation_controller.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/patient/home/custom_title_text.dart';
import 'package:medical_app/view/widgets/patient/custom_image_top.dart';

class CustomReservationTop extends StatelessWidget {
  const CustomReservationTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomPaintAppTop(),
        Center(
          child: GetBuilder<PatientReservationControllerImp>(
              builder: (rescontroller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: Get.height * 0.08,
                ),
                CustomImageTop(
                  imageAssest: rescontroller.currentPage == 0
                      ? AppImageAssets.imageLocationTracking
                      : AppImageAssets.imageCridtCard,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                CustomTiltleText(
                  text: rescontroller.currentPage == 0
                      ? AppStrings.selectLocation
                      : AppStrings.paymentMethod,
                ),
              ],
            );
          }),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 10.w,
            top: 35.h,
          ),
          child: const CustomNavArrow(),
        ),
      ],
    );
  }
}

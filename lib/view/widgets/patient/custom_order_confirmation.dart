import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_description_text_done.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_picture_done.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_title_text_done.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';

class CustomOrderConfirmation extends GetView<LayoutControllerImp> {
  const CustomOrderConfirmation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Get.height / 5,
        bottom: Get.height / 3.7,
        left: Get.width * 0.08,
        right: Get.width * 0.08,
      ),
      padding: EdgeInsets.all(30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.whiteColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomPictureDone(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: const CustomTitleTextDone(title: AppStrings.thankYou),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: const CustomDiscreptionTextDone(
                  desciption: AppStrings.completeOrder),
            ),
            CustomElevatedButton(
              width: Get.width * 0.47,
              text: AppStrings.orderTracking,
              font: 17.sp,
              onPressed: (() {
                Get.back();
                controller.changePage(6, 2);
              }),
            ),
          ],
        ),
      ),
    );
  }
}

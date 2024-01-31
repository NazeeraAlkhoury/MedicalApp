import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/admin/review_registeration_request/custom_register_refused_bottomsheet.dart';

Future<dynamic> openRegistertionRefusedBottomSheet() {
  return Get.bottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.primaryColor,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
    ),
    isDismissible: true,
    const CustomRegistrationRefusedBottomSheet(),
  );
}

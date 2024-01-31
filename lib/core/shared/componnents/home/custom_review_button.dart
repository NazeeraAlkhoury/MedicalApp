import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomReviewButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomReviewButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.018,
      width: Get.width * 0.15,
      child: MaterialButton(
        color: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.61.r),
        ),
        onPressed: onPressed,
        //controller.changePage(4, 0);
        // Get.to(
        //   const PatientProductReviewsScreen(),
        // );

        child: Text(
          AppStrings.review.tr,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontSize: 6.48.sp),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomreviewOrderCountCard extends StatelessWidget {
  final String orderState;
  final String count;
  const CustomreviewOrderCountCard({
    Key? key,
    required this.orderState,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            orderState.tr,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 11.sp,
                ),
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),
          Text(
            count,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 11.sp,
                ),
          ),
        ],
      ),
    );
  }
}

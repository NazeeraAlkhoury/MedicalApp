import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/data/model/patient/availabe_dates_model.dart';

class CustomDateItemBuild extends StatelessWidget {
  final AvailableDatesModel model;
  final void Function()? onPressed;
  final bool? isActive;
  const CustomDateItemBuild({
    Key? key,
    required this.model,
    this.isActive,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: Get.width * 0.03,
      ),
      child: MaterialButton(
        elevation: 0,
        onPressed: onPressed,
        color: isActive! ? AppColors.primaryColor : AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.67.r),
          side: BorderSide(
              color: isActive! ? Colors.transparent : AppColors.accentColor),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.date.tr,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontSize: 11.67.sp,
                    color: isActive!
                        ? AppColors.whiteColor
                        : AppColors.blackColor),
              ),
              Text(
                model.availableTimesCount.tr,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 7.78.sp,
                    color:
                        isActive! ? AppColors.whiteColor : AppColors.greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomStepperItem extends StatelessWidget {
  final void Function()? onPressed;
  final int orderCount;
  final String text;
  final bool isActive;
  const CustomStepperItem({
    Key? key,
    required this.onPressed,
    required this.orderCount,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 12.r,
                    backgroundColor: isActive
                        ? AppColors.primaryColor
                        : AppColors.whiteAccentColor,
                    child: Text(
                      orderCount.toString(),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 9.sp,
                            color: isActive
                                ? AppColors.accentColor
                                : AppColors.primaryColor,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Text(
                    text.tr,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 11.sp,
                          color: isActive
                              ? AppColors.primaryColor
                              : AppColors.whiteAccentColor,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              if (isActive)
                Container(
                  height: 1.h,
                  width: Get.width * 0.25,
                  color: AppColors.primaryColor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

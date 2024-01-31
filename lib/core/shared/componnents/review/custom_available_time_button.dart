import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_colors.dart';

class AvailableTimeButton extends StatelessWidget {
  final String time;
  final void Function()? onPressed;
  final bool? isActiveTime;
  const AvailableTimeButton({
    Key? key,
    required this.time,
    this.onPressed,
    this.isActiveTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isActiveTime! ? AppColors.primaryColor : AppColors.accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.09),
      ),
      onPressed: onPressed,
      child: Text(
        time.tr,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 9.8.sp,
              color:
                  isActiveTime! ? AppColors.whiteColor : AppColors.primaryColor,
            ),
      ),
    );
  }
}

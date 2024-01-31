import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomBottomSheettButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomBottomSheettButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text.tr,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: AppColors.whiteColor,
              fontSize: 16.sp,
            ),
      ),
    );
  }
}

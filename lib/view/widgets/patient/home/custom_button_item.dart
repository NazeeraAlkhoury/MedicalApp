import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';

class CustomButtonItem extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  final bool? isSelected;
  const CustomButtonItem({
    Key? key,
    required this.textButton,
    this.onPressed,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: isSelected! ? AppColors.primaryColor : null,
      padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 5.w),
      height: 33.5.h,
      minWidth: 100.w,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60.r),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      child: Text(
        textButton,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontWeight: AppFontWeight.light,
              fontSize: 12.sp,
              color:
                  isSelected! ? AppColors.accentColor : AppColors.primaryColor,
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomUserEmailText extends StatelessWidget {
  final String email;
  const CustomUserEmailText({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 6.8.sp,
            color: AppColors.greyColor,
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomTableNameText extends StatelessWidget {
  const CustomTableNameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nazeera alkhouri',
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontSize: 7.sp, color: AppColors.blackaccentColor),
    );
  }
}

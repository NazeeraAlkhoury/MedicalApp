import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomLiftTitleBarChart extends StatelessWidget {
  final String title;
  const CustomLiftTitleBarChart({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('\$$title',
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: AppColors.whiteColor, fontSize: 7.4.sp));
  }
}

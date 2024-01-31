import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomOrderText extends StatelessWidget {
  const CustomOrderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.orders.tr,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontSize: 18.sp,
          ),
    );
  }
}

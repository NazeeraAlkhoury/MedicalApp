import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

class CustomWelcomText extends StatelessWidget {
  const CustomWelcomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.welcom.tr,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 31.sp,
          ),
    );
  }
}

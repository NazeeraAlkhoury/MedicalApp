import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

class CustomTextLogin extends StatelessWidget {
  const CustomTextLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.login.tr.toUpperCase(),
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 24.sp),
    );
  }
}

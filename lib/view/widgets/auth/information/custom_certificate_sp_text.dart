import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomCertificateSpText extends StatelessWidget {
  const CustomCertificateSpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.licenseMedicalCertificate.tr.toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .copyWith(fontSize: 12.sp, color: AppColors.orangeAccent),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CostomWelcomRichText extends StatelessWidget {
  final String? text;
  const CostomWelcomRichText({
    Key? key,
    this.text = AppStrings.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppStrings.welcom.tr,
          style:
              Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13.sp),
        ),
        TextSpan(
          text: text == null ? text!.tr.toUpperCase() : text!.tr,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 13.sp, color: AppColors.blackColor),
        ),
      ]),
    );
  }
}

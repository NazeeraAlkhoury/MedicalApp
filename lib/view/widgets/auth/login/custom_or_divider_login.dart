import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomOrDividerLogin extends StatelessWidget {
  const CustomOrDividerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 115.w, child: const Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(
            AppStrings.or.tr,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 12.sp, color: HexColor('#757171')),
          ),
        ),
        SizedBox(width: 115.w, child: const Divider()),
      ],
    );
  }
}

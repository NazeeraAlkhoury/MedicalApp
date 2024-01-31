import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomDetalProdAgeText extends StatelessWidget {
  final String age;
  const CustomDetalProdAgeText({
    Key? key,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      age.tr,
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(color: AppColors.orangeAccent, fontSize: 9.5.sp),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomAddSupervisor extends StatelessWidget {
  final Function()? onTap;
  const CustomAddSupervisor({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        '+  ${AppStrings.addSupervisor.tr}',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9.sp),
      ),
    );
  }
}

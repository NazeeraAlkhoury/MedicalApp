import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomSubtotalText extends StatelessWidget {
  final double subTotal;

  const CustomSubtotalText({
    Key? key,
    required this.subTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          end: 20.w,
          top: 10.h,
        ),
        child: Text(
          '${AppStrings.subtotal.tr} = \$$subTotal',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 10.sp,
              ),
        ),
      ),
    );
  }
}

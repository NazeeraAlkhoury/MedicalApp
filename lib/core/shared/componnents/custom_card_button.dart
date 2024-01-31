import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class CustomCardButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? color;
  final String text;
  const CustomCardButton({
    Key? key,
    this.onPressed,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.7.h,
      width: 68.w,
      child: SizedBox(
        child: MaterialButton(
          height: 19.7.h,
          minWidth: 68.w,
          onPressed: onPressed,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.42.r),
          ),
          child: Text(
            text.tr,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 7.7.sp,
                ),
          ),
        ),
      ),
    );
  }
}

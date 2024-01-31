import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomProDetalNameText extends StatelessWidget {
  final String name;
  const CustomProDetalNameText({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.tr,
      style: Theme.of(context).textTheme.headline3!.copyWith(
            fontSize: 14.sp,
          ),
    );
  }
}

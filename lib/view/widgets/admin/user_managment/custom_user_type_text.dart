import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/functions/get_user_type_color.dart';

class CustomUserTypeText extends StatelessWidget {
  final String type;
  const CustomUserTypeText({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      type.tr,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 6.48.sp,
            color: getUserTypeColor(type),
          ),
    );
  }
}

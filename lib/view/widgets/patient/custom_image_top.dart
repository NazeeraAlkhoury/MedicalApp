import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomImageTop extends StatelessWidget {
  final String imageAssest;
  const CustomImageTop({
    Key? key,
    required this.imageAssest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imageAssest,
      height: 100.h,
    );
  }
}

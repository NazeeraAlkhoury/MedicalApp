import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';

class CustomImageProgram extends StatelessWidget {
  const CustomImageProgram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAssets.imageUnderawMedicine,
      height: 185.h,
      fit: BoxFit.fill,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';

class CustomSelectLocationPage extends StatelessWidget {
  const CustomSelectLocationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.673,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Image.asset(AppImageAssets.map1),
    );
  }
}

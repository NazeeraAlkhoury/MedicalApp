import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomClosedButton extends StatelessWidget {
  const CustomClosedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: SvgPicture.asset(
        AppIconAssets.iconClosed,
        height: 9.h,
        width: 9.w,
      ),
    );
  }
}

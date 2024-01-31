import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomHomeMyPic extends StatelessWidget {
  const CustomHomeMyPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.r,
      backgroundColor: AppColors.whiteColor,
      // SvgPicture.asset(AppImageAssets.pHomePic)
    );
  }
}

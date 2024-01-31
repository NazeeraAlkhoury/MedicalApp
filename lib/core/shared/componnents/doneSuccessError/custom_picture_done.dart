import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';

class CustomPictureDone extends StatelessWidget {
  final String? picAssets;
  const CustomPictureDone({
    Key? key,
    this.picAssets = AppImageAssets.imageUndrawUndraiconTeamEffortso6y,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      picAssets!,
      height: 130.h,
    );
  }
}

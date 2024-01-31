import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomAddSeviceProductRow extends StatelessWidget {
  final bool? isClose;
  final bool? isIcon;
  final String text;
  const CustomAddSeviceProductRow({
    Key? key,
    this.isClose = false,
    required this.text,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isIcon! == false) SvgPicture.asset(AppIconAssets.iconPlus),
        SizedBox(
          width: Get.width * 0.012,
        ),
        Text(
          text.tr,
          style:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14.sp),
        ),
        if (isClose!) const Spacer(),
        if (isClose!)
          CloseButton(
            color: AppColors.greyColor,
          ),
      ],
    );
  }
}

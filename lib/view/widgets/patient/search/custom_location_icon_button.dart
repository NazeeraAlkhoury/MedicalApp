import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomLocationIconButton extends StatelessWidget {
  const CustomLocationIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LayoutControllerImp layoutController = Get.find<LayoutControllerImp>();
    return InkWell(
      onTap: () {
        layoutController.changePage(11, 1);
      },
      child: SvgPicture.asset(
        AppIconAssets.iconLocation,
        color: AppColors.primaryColor,
        height: 20.h,
      ),
    );
  }
}

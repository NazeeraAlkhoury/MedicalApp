import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/constants/app_themes/app_themes.dart';
import 'package:medical_app/core/localizations/locale_controller.dart';

class CustomNavArrow extends GetView<LocaleController> {
  final Color? color;
  // final void Function()? onPressed;
  const CustomNavArrow({
    super.key,
    this.color,
  //  this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        controller.appTheme == AppTheme.customEnglishTheme
            ? AppIconAssets.iconNavArrowLeft
            : AppIconAssets.iconNavArrowRight,
        color: color,
      ),
      onPressed: () => Get.back(),
    );
  }
}

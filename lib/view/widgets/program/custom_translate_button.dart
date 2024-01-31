import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/locale_controller.dart';

class CustomTranslateButton extends GetView<LocaleController> {
  const CustomTranslateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeLang();
      },
      child: SvgPicture.asset(AppIconAssets.iconTranslate),
    );
  }
}

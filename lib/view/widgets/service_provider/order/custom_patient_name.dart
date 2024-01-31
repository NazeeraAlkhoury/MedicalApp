// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';

class CustomPatientName extends StatelessWidget {
  const CustomPatientName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppIconAssets.iconProfileFill),
        SizedBox(
          width: Get.width * 0.003,
        ),
        Text(
          'Nazeera Alkhouri',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: AppFontWeight.regular,
              ),
        ),
      ],
    );
  }
}

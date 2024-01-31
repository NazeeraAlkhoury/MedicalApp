import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';

class CustomRichTextTitleField extends StatelessWidget {
  final String text;
  const CustomRichTextTitleField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: text.tr.toUpperCase(),
            style: Theme.of(context).textTheme.headline4,
          ),
          TextSpan(
            text: ' *'.tr,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: AppColors.redColor, fontWeight: AppFontWeight.regular),
          ),
        ],
      ),
    );
  }
}

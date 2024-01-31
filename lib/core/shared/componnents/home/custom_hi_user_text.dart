import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomHiUserText extends StatelessWidget {
  const CustomHiUserText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.hi.tr,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}

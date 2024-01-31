import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomContinueTextRegister extends StatelessWidget {
  const CustomContinueTextRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.continueAs.tr,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}

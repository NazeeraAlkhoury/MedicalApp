import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_login_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

class CustomSignInOrSignUp extends GetView<PatientLoginControllerImp> {
  const CustomSignInOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAccount.tr,
          style: Theme.of(context).textTheme.headline2!.copyWith(
              fontSize: 12, color: HexColor('#000000').withOpacity(.6)),
        ),
        InkWell(
          onTap: (() {
            controller.goToSignUp();
          }),
          child: Text(
            AppStrings.signUp.tr,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ],
    );
  }
}

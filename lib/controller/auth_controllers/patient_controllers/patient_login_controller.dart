// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_routes.dart';

abstract class PatientLoginController extends GetxController {
  login();
  goToSignUp();
  // goToForgetPassword();

}

class PatientLoginControllerImp extends PatientLoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  login() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppRoutes.patientlayoutRoute);
      print('validate');
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.registerRoute);
  }

  // @override
  // goToForgetPassword() {}

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

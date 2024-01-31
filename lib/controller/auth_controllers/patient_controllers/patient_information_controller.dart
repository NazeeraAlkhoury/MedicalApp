// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class PatientInformationController extends GetxController {
  next();
}

class PatientInformationControllerImp extends PatientInformationController {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  next() {
    if (formKey.currentState!.validate()) {
      print('validate');
      Get.offNamed(AppRoutes.accountConfirmationRoute);
      // Get.delete<PatientInformationControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}

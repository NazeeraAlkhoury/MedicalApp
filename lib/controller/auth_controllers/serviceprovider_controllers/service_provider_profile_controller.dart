// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class SProviderProfileController extends GetxController {
  editeSProviderProfile();
}

class SProviderProfileControllerImp extends SProviderProfileController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController editPassword;
  late TextEditingController bankAccount;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    editPassword = TextEditingController();
    bankAccount = TextEditingController();
    super.onInit();
  }

  @override
  editeSProviderProfile() {
    if (formKey.currentState!.validate()) {
      print('validate');
      Get.offNamed(AppRoutes.servicesProviderEditsRoute);
    } else {
      print('Notvalidate');
    }
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    editPassword.dispose();
    bankAccount.dispose();
    super.dispose();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class AccountConfirmController extends GetxController {
  verificationCode();
  validate();
}

class AccountConfirmControllerImp extends AccountConfirmController {
  late TextEditingController codeController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isVal = true;
  @override
  void onInit() {
    codeController = TextEditingController();
    super.onInit();
  }

  @override
  verificationCode() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppRoutes.patientProfileRoute);
    }
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  validate() {}
}

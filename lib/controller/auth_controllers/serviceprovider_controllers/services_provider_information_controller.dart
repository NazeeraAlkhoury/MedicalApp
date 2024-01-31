// ignore_for_file: avoid_print

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class ServiceProvidInformController extends GetxController {
  Future<void> pickFile();
  next();
}

class ServiceProvidInformControllerImp extends ServiceProvidInformController {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController bankNameController;
  late TextEditingController ibanNumberController;
  late TextEditingController swiftCodeController;
  late TextEditingController uploadPdfController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<File?> selectedFile = Rx<File?>(null);

  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    bankNameController = TextEditingController();
    ibanNumberController = TextEditingController();
    swiftCodeController = TextEditingController();
    uploadPdfController = TextEditingController();
    //TextEditingController(text: selectedFile.value?.path ?? '');

    super.onInit();
  }

  @override
  Future<void> pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        File file = File(result.files.single.path!);
        selectedFile.value = file;
        uploadPdfController.text = selectedFile.value!.path.split('/').last;
      }
    } catch (e) {
      print('An error occurred while picking the file: $e');
    }
    update();
  }

  @override
  next() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppRoutes.servicesProviderRegisterRoute);
      print('validate');
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
    bankNameController.dispose();
    ibanNumberController.dispose();
    swiftCodeController.dispose();
    uploadPdfController.dispose();
    super.dispose();
  }
}

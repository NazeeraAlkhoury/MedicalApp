// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class PatientProfileController extends GetxController {
  Future<void> pickImage();
  editePatientProfile();
}

class PatientProfileControllerImp extends PatientProfileController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController editPassword;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<File?> fileImage = Rx<File?>(null);

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    editPassword = TextEditingController();
    super.onInit();
  }

  @override
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        fileImage.value = File(pickedImage.path);
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  editePatientProfile() {
    if (formKey.currentState!.validate()) {
      print('validate');
      Get.offNamed(AppRoutes.patientEditsRoute);
    } else {
      print('Notvalidate');
    }
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    editPassword.dispose();
    super.dispose();
  }
}

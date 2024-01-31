import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_home_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomClosedButton extends GetView<PatientHomeControllerImp> {
  const CustomClosedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CloseButton(
      color: AppColors.primaryColor,
      onPressed: () => controller.closeDoctorsDialog(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/shared/componnents/bottom_navigation_bar/custom_bottom_nav_bar.dart';

class PatientLayoutScreen extends StatelessWidget {
  const PatientLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(LayoutControllerImp());
    return GetBuilder<LayoutControllerImp>(builder: (layController) {
      return Scaffold(
        body:
            layController.patientpagesList.elementAt(layController.currentPage),
        bottomNavigationBar: const CustomBottomNavBar(),
      );
    });
  }
}

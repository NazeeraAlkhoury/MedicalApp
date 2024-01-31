import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_delete_supervisor_bottomsheet.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';

abstract class ManageSupervisorsController extends GetxController {
  openDrawer();
  closeDrawer();
  goToDeleteSupervisorBottomSheet();
  goToValidatyScreen();

  goToAddSupervisor();
  goToScreenUsingDrawer(int index);
}

class ManageSupervisorsControllerImp extends ManageSupervisorsController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  @override
  goToDeleteSupervisorBottomSheet() {
    openDeleteSuperisorsBottomSheet();
  }

  @override
  goToValidatyScreen() {
    Get.toNamed(AppRoutes.validityRoute);
  }

  @override
  goToAddSupervisor() {
    Get.toNamed(AppRoutes.addSupervisorRoute);
  }

  @override
  goToScreenUsingDrawer(int index) {
    switch (index) {
      case 0:
        Get.offNamed(AppRoutes.userManagmentRoute);
        break;
      case 1:
        Get.offNamed(AppRoutes.registrationRequestsRoute);
        break;
      case 2:
        Get.back();

        break;
      case 3:
        Get.offNamed(AppRoutes.salesReportRoute);
        break;
      case 4:
        Get.offNamed(AppRoutes.serviceManagmentRoute);
        break;
      case 5:
        Get.offNamed(AppRoutes.manageReservationRoute);
        break;
      case 6:
        Get.back();
        openLogoutBottomSheet();
    }
  }
}

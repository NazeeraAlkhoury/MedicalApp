import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class UserManagmentController extends GetxController {
  openDrawer();
  closeDrawer();
  goToScreen(String userType);
  goToScreenUsingDrawer(int index);
}

class UserManagmentControllerImp extends UserManagmentController {
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
  goToScreenUsingDrawer(int index) {
    switch (index) {
      case 0:
        Get.back();
        break;
      case 1:
        Get.offNamed(AppRoutes.registrationRequestsRoute);
        break;
      case 2:
        Get.offNamed(AppRoutes.manageSupervisorsRoute);
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

  @override
  goToScreen(String userType) {
    switch (userType) {
      case AppStrings.patient:
        Get.toNamed(AppRoutes.reviewUserManagmentPRoute);
        break;
      case AppStrings.serviceProvider:
        Get.toNamed(AppRoutes.reviewUserManagmentSPRoute);
    }
  }
}

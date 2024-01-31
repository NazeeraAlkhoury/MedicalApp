import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';

abstract class AdminHomeController extends GetxController {
  openDrawer();
  closeDrawer();
  goToScreen(int index);
}

class AdminHomeControllerImp extends AdminHomeController {
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
  goToScreen(int index) {
    switch (index) {
      case 0:
        closeDrawer();
        Get.toNamed(AppRoutes.userManagmentRoute);
        break;
      case 1:
        closeDrawer();
        Get.toNamed(AppRoutes.registrationRequestsRoute);
        break;
      case 2:
        closeDrawer();
        Get.toNamed(AppRoutes.manageSupervisorsRoute);
        break;
      case 3:
        closeDrawer();
        Get.toNamed(AppRoutes.salesReportRoute);
        break;
      case 4:
        closeDrawer();
        Get.toNamed(AppRoutes.serviceManagmentRoute);
        break;
      case 5:
        closeDrawer();
        Get.toNamed(AppRoutes.manageReservationRoute);
        break;
      case 6:
        Get.back();
        openLogoutBottomSheet();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';

abstract class RegistrationRequestsController extends GetxController {
  openDrawer();
  closeDrawer();
  goToReviewRegisterationRequests();
  goToScreenUsingDrawer(int index);
}

class RegistrationRequestsControllerImp extends RegistrationRequestsController {
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
  goToReviewRegisterationRequests() {
    Get.toNamed(AppRoutes.reviewRegistrationRequestsRoute);
  }

  @override
  goToScreenUsingDrawer(int index) {
    switch (index) {
      case 0:
        Get.offNamed(AppRoutes.userManagmentRoute);
        break;
      case 1:
        Get.back();
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
}

import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_order_confirmation_dialog.dart';

abstract class PatientReservationController extends GetxController {
  changePage(int index);
  next();
}

class PatientReservationControllerImp extends PatientReservationController {
  int currentPage = 0;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }

  @override
  next() {
    if (currentPage == 0) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInToLinear,
      );
    }
    if (currentPage == 1) {
      openOrderConfirmationDialog();
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

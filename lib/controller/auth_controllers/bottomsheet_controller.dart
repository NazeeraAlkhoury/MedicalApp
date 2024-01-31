import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class BottomSheetController extends GetxController {
  onPageChanged(int index);
  showPassword();
  showConfNewPassword();
  forgetPassword();
  verificationCode();
  resetPassword();
  void next();
}

class BottomSheetControllerImp extends BottomSheetController {
  int currentIndex = 0;
  bool isshowpassword = true;
  bool isConfirmNewshowpass = true;

  late PageController pageController;
  late TextEditingController emailController;
  late TextEditingController newPassController;
  late TextEditingController confirmNewPassController;

  GlobalKey<FormState> forgetKey = GlobalKey<FormState>();
  GlobalKey<FormState> resetPassKey = GlobalKey<FormState>();

  @override
  void onInit() {
    pageController = PageController();
    emailController = TextEditingController();
    newPassController = TextEditingController();
    confirmNewPassController = TextEditingController();
    super.onInit();
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  showConfNewPassword() {
    isConfirmNewshowpass = !isConfirmNewshowpass;
    update();
  }

  @override
  forgetPassword() {
    if (forgetKey.currentState!.validate()) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInToLinear,
      );
    }
  }

  @override
  resetPassword() {
    if (resetPassKey.currentState!.validate()) {
      Get.back();
    }
  }

  @override
  verificationCode() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
    );
  }

  @override
  next() {
    switch (currentIndex) {
      case 0:
        forgetPassword();
        break;
      case 1:
        verificationCode();
        break;
      case 2:
        resetPassword();
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    emailController.dispose();
    newPassController.dispose();
    confirmNewPassController.dispose();
    super.dispose();
  }
}

import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_doctors_dialog.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class PatientHomeController extends GetxController {
  onPressedSelectButton(int index);
  closeDoctorsDialog();
}

class PatientHomeControllerImp extends PatientHomeController {
  List<String> textButtonList = [
    AppStrings.doctors.tr,
    AppStrings.pharmacies.tr,
    AppStrings.laboratories.tr,
    AppStrings.clinics.tr,
  ];

  List<bool> isSelectButton = [
    false,
    false,
    false,
    false,
  ];

  @override
  onPressedSelectButton(int index) {
    for (int i = 0; i <= isSelectButton.length - 1; i++) {
      if (i == index) {
        isSelectButton[i] = !isSelectButton[i];
        openDoctorsDialog();
        update();
      } else {
        isSelectButton[i] = false;
      }
    }
  }

  @override
  closeDoctorsDialog() {
    for (int i = 0; i <= isSelectButton.length - 1; i++) {
      if (isSelectButton[i] == true) {
        isSelectButton[i] = !isSelectButton[i];
        Get.back();
        update();
      }
    }
  }
}

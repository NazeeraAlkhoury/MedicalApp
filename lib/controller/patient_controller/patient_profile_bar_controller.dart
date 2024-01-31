import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';
import 'package:medical_app/view/screens/patient/patient_payment_methodes_screen.dart';
import 'package:medical_app/view/screens/patient/patient_personal_detailes.dart';
import 'package:medical_app/view/screens/patient/patient_your_location_screen.dart';

abstract class PatientProfileBar extends GetxController {
  goToProfileDetails();
  goToLocation();
  goToPaymentMethods();
  logOut();
}

class PatientProfileBarImp extends PatientProfileBar {
  @override
  goToLocation() {
    Get.to(
      const PatientYourLocationScreen(),
    );
  }

  @override
  goToPaymentMethods() {
    Get.to(
      const PatientPaymentMethodScreen(),
    );
  }

  @override
  goToProfileDetails() {
    Get.to(
      const PatientPersonalDetailes(),
    );
  }

  @override
  logOut() {
    openLogoutBottomSheet();
  }
}

import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class RegisterCotroller extends GetxController {
  goToPatientInformation();
  goToServiceProviderInformation();
}

class RegisterCotrollerImp extends RegisterCotroller {
  @override
  goToPatientInformation() {
    Get.toNamed(AppRoutes.patientInformationRoute);
  }

  @override
  goToServiceProviderInformation() {
    Get.toNamed(AppRoutes.servicesProviderInforRoute);
  }
}

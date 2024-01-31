import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class ProgramController extends GetxController {
  goToLogin();
}

class ProgramControllerImp extends ProgramController {
  @override
  goToLogin() {
    Get.toNamed(AppRoutes.loginRoute);
  }
}

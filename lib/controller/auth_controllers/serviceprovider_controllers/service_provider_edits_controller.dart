import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';

abstract class SProviderEditsController extends GetxController {
  done();
}

class SProviderEditsControllerImp extends SProviderEditsController {
  @override
  done() {
    Get.offNamed(AppRoutes.spLayoutRoute);
  }
}

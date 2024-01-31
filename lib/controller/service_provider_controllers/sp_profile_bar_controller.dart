import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';

abstract class SpProfilebarController extends GetxController {
  spLogout();
}

class SpProfilebarControllerImp extends SpProfilebarController {
  @override
  spLogout() {
    openLogoutBottomSheet();
  }
}

import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_add_service_product_dialog.dart';

abstract class SpHomeController extends GetxController {
  goToAddServiceProduct();
}

class SpHomeControllerImp extends SpHomeController {
  @override
  goToAddServiceProduct() {
    openAddServiceProductDialog();
  }
}

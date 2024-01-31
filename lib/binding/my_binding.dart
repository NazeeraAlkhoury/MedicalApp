import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LayoutControllerImp(),
      fenix: true,
    );
  }
}

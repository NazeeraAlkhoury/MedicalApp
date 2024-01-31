import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_add_supervisor_bottomsheet.dart';

abstract class AddSupervisorController extends GetxController {
  openAddSupervisor();
}

class AddSupervisorControllerImp extends AddSupervisorController {
  @override
  openAddSupervisor() {
    openAddSuperisorsBottomSheet();
  }
}

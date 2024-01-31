import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class ValiditeController extends GetxController {
  onChanged(int index);
}

class ValiditeControllerImp extends ValiditeController {
  List<bool> checkList = [
    false,
    false,
    false,
    false,
  ];

  List<String> titleList = [
    AppStrings.allowAccepRregrequests,
    AppStrings.allowAddSupervisor,
    AppStrings.allowModificationUserData,
    AppStrings.allowBlockingUser,
  ];

  @override
  onChanged(int index) {
    checkList[index] = !checkList[index];
    update();
  }
}

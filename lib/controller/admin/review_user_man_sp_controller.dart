import 'package:get/get.dart';

abstract class ReviewUserManSpController extends GetxController {
  onChangedActiveAccount(bool? isActive);
  onChangedDeActiveAccount(bool? isDeActive);
//  onChangeDeActiveAccount();
}

class ReviewUserManSpControllerImp extends ReviewUserManSpController {
  bool? isAct = false;
  bool? isDeAct = false;

  @override
  onChangedActiveAccount(bool? isActive) {
    isAct = !isAct!;
    isDeAct = false;
    update();
  }

  @override
  onChangedDeActiveAccount(bool? isDeActive) {
    isDeAct = !isDeAct!;
    isAct = false;
    update();
  }

  // @override
  // onChangeDeActiveAccount() {
  //   isDeAct = true;
  //   isAct = false;
  //   update();
  // }
}

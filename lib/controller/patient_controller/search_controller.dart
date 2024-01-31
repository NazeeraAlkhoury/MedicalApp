import 'package:get/get.dart';

abstract class SearchController extends GetxController {
  selectFilterType(int index);
}

class SearchControllerImp extends SearchController {
  List<bool> isSelectList = [
    false,
    false,
    false,
    false,
  ];

  @override
  selectFilterType(int index) {
    isSelectList[index] = !isSelectList[index];
    update();
  }
}

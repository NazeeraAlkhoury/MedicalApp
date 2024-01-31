import 'package:get/get.dart';

abstract class PaProductReviewsController extends GetxController {
  pickDate(int index);
  pickTime(int index);
}

class PaProductReviewsControllerImp extends PaProductReviewsController {
  int? dateIndex;
  int? timeIndex;

  List<String> availableTimesList = [
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '3:00 PM',
    '3:30 PM',
    '4:00 PM',
  ];

  @override
  pickDate(int index) {
    dateIndex = index;
    update();
  }

  @override
  pickTime(int index) {
    timeIndex = index;
    update();
  }
}

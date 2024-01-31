import 'package:get/get.dart';
import 'package:medical_app/core/functions/open_delete_post_bottomsheet.dart';
import 'package:medical_app/core/functions/open_edit_post_dialog.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class SpReviewsController extends GetxController {
  onChangeItemMenue(Object? value);
  pickDate(int index);
  pickTime(int index);
}

class SpReviewsControllerImp extends SpReviewsController {
  List<String> menueList = [
    AppStrings.edit,
    AppStrings.delete,
  ];
  String? selectedValue;

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
  onChangeItemMenue(Object? value) {
    selectedValue = value as String?;
    update();
    switch (selectedValue) {
      case AppStrings.edit:
        openEditPostDialog();
        break;
      case AppStrings.delete:
        openDeletePostBottomSheet();
        break;
    }
  }

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

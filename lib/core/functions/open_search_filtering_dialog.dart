import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/patient/search/custom_search_filtering_dialog.dart';

Future<dynamic> openSearchFilteringDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.8),
    const CustomSearchFilteringDialog(),
  );
}

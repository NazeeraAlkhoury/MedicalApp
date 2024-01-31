import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/patient/custom_order_confirmation.dart';

Future<dynamic> openOrderConfirmationDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.8),
    const CustomOrderConfirmation(),
  );
}

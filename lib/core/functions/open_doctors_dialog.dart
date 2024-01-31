import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/view/widgets/patient/doctors/custom_doctors_dialog_card.dart';

Future<dynamic> openDoctorsDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    const CustomDoctorsDialogCard(),
  );
}

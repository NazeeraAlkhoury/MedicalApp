import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_add_service_product.dart';

Future<dynamic> openAddServiceProductDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    const CustomAddServiceProduct(),
  );
}

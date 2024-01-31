import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/manage_supervisor_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/shared/componnents/custom_card_button.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_email_text.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_name_text.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_pic.dart';

class CustomSupervisorsItemBuilder
    extends GetView<ManageSupervisorsControllerImp> {
  const CustomSupervisorsItemBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.35.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(17.w),
        child: Row(
          children: [
            const CustomUserPic(
              image: AppImageAssets.profile,
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomUserNameText(
                  name: 'Nazeera Alkhouri',
                ),
                SizedBox(
                  height: Get.height * 0.007,
                ),
                const CustomUserEmailText(
                  email: 'NazeeraAlkhouri@gmail.com',
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                CustomCardButton(
                  text: AppStrings.delete,
                  color: AppColors.redColor,
                  onPressed: () {
                    controller.goToDeleteSupervisorBottomSheet();
                  },
                ),
                SizedBox(
                  height: Get.height * 0.007,
                ),
                CustomCardButton(
                  text: AppStrings.validity,
                  color: AppColors.primaryColor,
                  onPressed: () {
                    controller.goToValidatyScreen();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

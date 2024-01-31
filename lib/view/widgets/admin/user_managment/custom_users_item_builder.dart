import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/user_managment_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_card_button.dart';
import 'package:medical_app/data/model/admin/user_model.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_email_text.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_name_text.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_pic.dart';
import 'package:medical_app/view/widgets/admin/user_managment/custom_user_type_text.dart';

class CustomUsersItemBuilder extends GetView<UserManagmentControllerImp> {
  final UserModel model;
  const CustomUsersItemBuilder({
    Key? key,
    required this.model,
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
        child: Row(children: [
          CustomUserPic(
            image: model.image,
          ),
          SizedBox(
            width: Get.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomUserNameText(
                name: model.name,
              ),
              CustomUserEmailText(
                email: model.email,
              ),
              CustomUserTypeText(
                type: model.type!,
              ),
            ],
          ),
          const Spacer(),
          CustomCardButton(
            text: AppStrings.review,
            color: AppColors.primaryColor,
            onPressed: () {
              controller.goToScreen(model.type!);
            },
          ),
        ]),
      ),
    );
  }
}

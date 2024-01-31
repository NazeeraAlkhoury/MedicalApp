import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/add_supervisor_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:medical_app/view/widgets/auth/custom_text_form_field.dart';

class CustomSupervisorInfo extends GetView<AddSupervisorControllerImp> {
  const CustomSupervisorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AppColors.greyColor,
      //  margin: EdgeInsets.only(bottom: Get.height * 0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const CustomRichTextTitleField(text: AppStrings.userName),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 6.h,
              bottom: 10.h,
            ),
            child: CustomTextFormField(
              textController: TextEditingController(text: 'Nazeera Alkhouri'),
              hintText: AppStrings.userName,
              textInputType: TextInputType.name,
              //validat: (String? val) {},
            ),
          ),
          const CustomRichTextTitleField(text: AppStrings.email),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 6.h,
              bottom: 10.h,
            ),
            child: CustomTextFormField(
              textController: TextEditingController(text: 'Nazeera@gmail.com'),
              hintText: AppStrings.email,
              textInputType: TextInputType.emailAddress,
              // validat: (String? val) {},
            ),
          ),
          const CustomRichTextTitleField(text: AppStrings.phoneNumber),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 6.h,
              bottom: 10.h,
            ),
            child: CustomTextFormField(
              textController: TextEditingController(text: '0999205081'),
              hintText: AppStrings.userName,
              textInputType: TextInputType.name,
              //validat: (String? val) {},
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: CustomAppButton(
                text: AppStrings.add.toUpperCase(),
                color: AppColors.greenColor,
                onPressed: () {
                  controller.openAddSupervisor();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

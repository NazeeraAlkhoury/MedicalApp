import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/add_service_product_controller.dart';
import 'package:medical_app/core/functions/open_edit_post_bottomsheet.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_add_two_pic.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_choose_date_time.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_discount_optional.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_drop_down_form_field.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_sp_form_field.dart';
import 'package:medical_app/view/widgets/service_provider/home/custom_add_serv_pro_row.dart';

class CustomEditPostDialog extends StatelessWidget {
  const CustomEditPostDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<AddServiceProductControllerImp>();
    return GetBuilder<AddServiceProductControllerImp>(builder: (controller) {
      return Card(
        margin: EdgeInsets.only(
          top: Get.height * 0.12,
          bottom: controller.isOpen ? Get.height * 0.02 : Get.height * 0.13,
          left: Get.width * 0.05,
          right: Get.width * 0.05,
        ),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.all(10.0.w),
              child: Column(
                children: [
                  CustomAddSeviceProductRow(
                    isClose: true,
                    isIcon: true,
                    text: AppStrings.editPost.toUpperCase(),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  CustomDropDownFormField(
                    list: controller.typeList,
                    selectedVal: controller.selectedType,
                    onChanged: (value) {
                      controller.onChangeType(value);
                    },
                    onSaved: (value) {
                      controller.onSavedType(value);
                    },
                    hintText: AppStrings.type,
                  ),
                  SizedBox(height: Get.height * 0.02),
                  CustomDropDownFormField(
                    hintText: AppStrings.serviceOrProdName,
                    list: controller.nameList,
                    selectedVal: controller.selectedName,
                    onChanged: (value) {
                      controller.onChangeName(value);
                    },
                    onSaved: (value) {
                      controller.onSavedName(value);
                    },
                  ),
                  SizedBox(height: Get.height * 0.02),
                  controller.isProduct()
                      ? const CustomAddTwoPic()
                      : CustomSpFormField(
                          hintText: AppStrings.serviceOrProdabout,
                          maxLine: 3,
                          controller: controller.about,
                        ),
                  SizedBox(height: Get.height * 0.02),
                  CustomSpFormField(
                    hintText: AppStrings.price,
                    controller: controller.price,
                  ),
                  SizedBox(height: Get.height * 0.02),
                  const CustomDiscountOptional(),
                  SizedBox(height: Get.height * 0.02),
                  if (!controller.isProduct()) const CustomChooseDateTime(),
                  SizedBox(height: Get.height * 0.03),
                  CustomAppButton(
                    text: AppStrings.saveEdit,
                    onPressed: () {
                      openEditPostBottomSheet();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

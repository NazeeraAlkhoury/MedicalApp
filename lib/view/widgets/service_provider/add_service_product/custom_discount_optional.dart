import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/add_service_product_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_discount_optional_text.dart';
import 'package:medical_app/view/widgets/service_provider/add_service_product/custom_sp_form_field.dart';

class CustomDiscountOptional extends StatelessWidget {
  const CustomDiscountOptional({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddServiceProductControllerImp>(builder: (controller) {
      return Column(
        children: [
          InkWell(
            onTap: () {
              controller.isOpenListDiscount();
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.w,
                right: 14.w,
              ),
              child: Row(
                children: [
                  const CustomDiscountOptionalText(),
                  const Spacer(),
                  SvgPicture.asset(AppIconAssets.iconArrowDwon),
                ],
              ),
            ),
          ),
          if (controller.isOpen)
            Column(
              children: [
                SizedBox(height: Get.height * 0.022),
                CustomSpFormField(
                  hintText: AppStrings.priceBeforeDiscount,
                  controller: controller.priceBeforeDiscount,
                ),
                SizedBox(height: Get.height * 0.02),
                CustomSpFormField(
                  hintText: AppStrings.priceAfterDiscount,
                  controller: controller.priceAfterDiscount,
                ),
              ],
            ),
        ],
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/serviceprovider_controllers/service_provider_register_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_description_text_done.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_picture_done.dart';
import 'package:medical_app/core/shared/componnents/doneSuccessError/custom_title_text_done.dart';

class ServicesProviderRegisterScreen extends StatelessWidget {
  const ServicesProviderRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceProviderRegisterControllerImp controller =
        Get.put(ServiceProviderRegisterControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 35.h,
                  ),
                  child: const CustomNavArrow(),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const CustomPictureDone(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: const Center(
                    child: CustomTitleTextDone(
                      title: AppStrings.spcompleteRegister,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 35.h),
                  child: const Center(
                    child: CustomDiscreptionTextDone(
                      desciption: AppStrings.spdesciptionRegister,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 110.w,
                  ),
                  child: CustomElevatedButton(
                    text: AppStrings.donenext,
                    width: Get.width * 0.2,
                    font: 15.22.sp,
                    onPressed: () {
                      controller.spRegiserDone();
                    },
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomPaintAppBottom(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/add_service_product_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_body_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_title_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_container_top_bottomsheet.dart';

class CustomAddPicBottomSheet extends GetView<AddServiceProductControllerImp> {
  const CustomAddPicBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.28,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Center(child: CustomContainerTopBottomSheet()),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(start: 20.w),
            sliver: const SliverToBoxAdapter(
              child: CustomBottomSheetTitleText(
                text: AppStrings.addPictures,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
                start: 20.w, bottom: 10.h, top: 10.h),
            sliver: SliverToBoxAdapter(
              child: InkWell(
                onTap: () {
                  controller.productPickImageCam();
                },
                child: Row(
                  children: [
                    SvgPicture.asset(AppIconAssets.iconCamera2),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    const CustomBottomSheetBodyText(
                      text: AppStrings.takePhoto,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(start: 20.w),
            sliver: SliverToBoxAdapter(
              child: InkWell(
                onTap: () {
                  controller.productPickImageGal();
                },
                child: Row(
                  children: [
                    SvgPicture.asset(AppIconAssets.iconGallery),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    const CustomBottomSheetBodyText(
                      text: AppStrings.uploadGallery,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/controller/service_provider_controllers/sp_profile_bar_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/core/shared/componnents/profile_bar.dart/custom_list_tile_profile.dart';
import 'package:medical_app/core/shared/componnents/custom_welcom_rich_text.dart';

class SpProfileBarScreen extends StatelessWidget {
  const SpProfileBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SpProfilebarControllerImp controller = Get.put(SpProfilebarControllerImp());
    LayoutControllerImp layoutController = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.085,
                      ),
                      SizedBox(
                        width: Get.width * 0.23,
                        //    child: const CustomPatientPictureProfile(),
                      ),
                      SizedBox(
                        height: Get.height * 0.005,
                      ),
                      const CostomWelcomRichText(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 30.h,
                  ),
                  child: const CustomNavArrow(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                CustomListTileProfile(
                  leadingIcon: AppIconAssets.iconPersonalDetails,
                  title: AppStrings.personalDetailes,
                  onTap: (() {
                    layoutController.changePage(4, 3);
                  }),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomListTileProfile(
                  leadingIcon: AppIconAssets.iconLocation,
                  title: AppStrings.location,
                  islocation: true,
                  onTap: (() {
                    layoutController.changePage(6, 3);
                  }),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomListTileProfile(
                  leadingIcon: AppIconAssets.iconPaymentMethod,
                  title: AppStrings.paymentMethod,
                  onTap: (() {
                    layoutController.changePage(7, 3);
                  }),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomListTileProfile(
                  isLogout: true,
                  leadingIcon: AppIconAssets.iconLogout,
                  title: AppStrings.logout,
                  onTap: (() {
                    controller.spLogout();
                  }),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

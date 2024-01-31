import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_profile_controller.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/controller/patient_controller/patient_profile_bar_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_patient_picture_profile.dart';
import 'package:medical_app/core/shared/componnents/profile_bar.dart/custom_list_tile_profile.dart';
import 'package:medical_app/core/shared/componnents/custom_welcom_rich_text.dart';

class PatientProfileBarScreen extends StatelessWidget {
  const PatientProfileBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PatientProfileBarImp controller = Get.put(PatientProfileBarImp());
    Get.lazyPut(() => PatientProfileControllerImp(), fenix: true);
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
                        child: const CustomPatientPictureProfile(),
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
                    layoutController.changePage(8, 3);
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
                    layoutController.changePage(9, 3);
                  }),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomListTileProfile(
                  leadingIcon: AppIconAssets.iconPaymentMethod,
                  title: AppStrings.paymentMethod,
                  onTap: (() {
                    layoutController.changePage(10, 3);
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
                    controller.logOut();
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

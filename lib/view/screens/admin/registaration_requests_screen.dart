import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/registration_requests_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_admin_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_search_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/registration_requests/build_registeration_requests.dart';

class RegistrationRequestsScreen extends StatelessWidget {
  const RegistrationRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationRequestsControllerImp controller =
        Get.put(RegistrationRequestsControllerImp());
    return Scaffold(
      key: controller.scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Padding(
        padding: EdgeInsets.only(
          top: Get.height * 0.037,
        ),
        child: CustomAdminDrawer(
          closeDrawer: () => controller.closeDrawer(),
          onTap: (index) => controller.goToScreenUsingDrawer(index),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.08,
                      ),
                      const Center(
                        child: CustomAdminTitleText(
                          title: AppStrings.registrationRequests,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      const CustomAdminSearchField(
                        hintText: AppStrings.enterName,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      const BuildRegisterationRequests()
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 20.w,
                    top: Get.height * 0.07,
                  ),
                  child: CustomAdminDrawerButton(
                    onTap: () => controller.openDrawer(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

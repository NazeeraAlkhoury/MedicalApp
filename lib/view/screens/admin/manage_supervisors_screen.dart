import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/manage_supervisor_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_admin_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_search_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/manage_supervisors/custom_add_supervisor.dart';
import 'package:medical_app/view/widgets/admin/manage_supervisors/custom_build_supervisors.dart';

class ManageSupervisorsScreen extends StatelessWidget {
  const ManageSupervisorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ManageSupervisorsControllerImp controller =
        Get.put(ManageSupervisorsControllerImp());
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.08,
                      ),
                      const Center(
                        child: CustomAdminTitleText(
                          title: AppStrings.manageSupervisors,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      const CustomAdminSearchField(
                        hintText: AppStrings.enterName,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomAddSupervisor(
                        onTap: (() {
                          controller.goToAddSupervisor();
                        }),
                      ),
                      SizedBox(
                        height: Get.height * 0.003,
                      ),
                      const CustomBuildSupervisors(),
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

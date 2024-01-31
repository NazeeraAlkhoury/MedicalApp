import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/add_supervisor_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_search_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/manage_supervisors/custom_add_supervisor.dart';
import 'package:medical_app/view/widgets/admin/manage_supervisors/custom_supervisor_info.dart';

class AddSupervisorScreen extends StatelessWidget {
  const AddSupervisorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddSupervisorControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                        height: Get.height * 0.06,
                      ),
                      const CustomAdminSearchField(
                          hintText: AppStrings.enterName),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomAddSupervisor(
                        onTap: () {},
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      const CustomSupervisorInfo(),
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
        ],
      ),
    );
  }
}

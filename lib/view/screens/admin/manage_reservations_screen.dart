import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/manage_reservation_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_admin_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_dropdown_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/manage_reservation/custom_manage_reservation_pagination.dart';

class ManageReservationScreen extends StatelessWidget {
  const ManageReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ManageReservationControllerImp controller =
        Get.put(ManageReservationControllerImp());
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
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Stack(children: [
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
                        title: AppStrings.manageReservations,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    GetBuilder<ManageReservationControllerImp>(
                        builder: (menueController) {
                      return CustomAdminDropDownFormField(
                        end: 0.66,
                        list: menueController.monthsItems,
                        selectedVal: menueController.selectedMonth,
                        hintText: AppStrings.month,
                        onChanged: (value) {
                          menueController.onChangeItemMonthMenue(value);
                        },
                      );
                    }),
                    SizedBox(
                        height: Get.height * 0.8,
                        child: const CustomMangeReservationPagination()),
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
            ]),
          ),
        ],
      ),
    );
  }
}

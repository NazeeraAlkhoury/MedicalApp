import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/service_managment_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_admin_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_dropdown_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_search_field.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_title_text.dart';
import 'package:medical_app/view/widgets/admin/service_managment/custom_service_managment_pagination.dart';

class ServiceManagmentScreen extends StatelessWidget {
  const ServiceManagmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceManagmentControllerImp controller =
        Get.put(ServiceManagmentControllerImp());
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
                        title: AppStrings.serviceManagement,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    const CustomAdminSearchField(
                        hintText: AppStrings.enterName),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    GetBuilder<ServiceManagmentControllerImp>(
                        builder: (menueController) {
                      return CustomAdminDropDownFormField(
                        end: 0.44,
                        list: menueController.typeItems,
                        selectedVal: menueController.selectedtype,
                        hintText: AppStrings.type,
                        onChanged: (value) {
                          menueController.onChangeItemTypeMenue(value);
                        },
                      );
                    }),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                          child: GetBuilder<ServiceManagmentControllerImp>(
                              builder: (monthController) {
                            return CustomAdminDropDownFormField(
                              list: monthController.monthsItems,
                              selectedVal: monthController.selectedMonth,
                              hintText: AppStrings.month,
                              onChanged: (value) {
                                monthController.onChangeItemMonthMenue(value);
                              },
                            );
                          }),
                        ),
                        SizedBox(
                          width: Get.width * 0.4,
                          child: GetBuilder<ServiceManagmentControllerImp>(
                              builder: (yearController) {
                            return CustomAdminDropDownFormField(
                              list: yearController.yearsItems,
                              selectedVal: yearController.selectedYear,
                              hintText: AppStrings.year,
                              onChanged: (value) {
                                yearController.onChangeItemYearMenue(value);
                              },
                            );
                          }),
                        ),
                      ],
                    ),
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
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: Get.height * 0.5,
                    child: const CustomSerrviceMangPagination(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

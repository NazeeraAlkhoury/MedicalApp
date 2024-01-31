import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/admin_home_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/custom_welcom_rich_text.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_admin_item_build.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_bar_chart.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_cost_text.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_save_month_text.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_admin_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_search_field.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AdminHomeControllerImp controller = Get.put(AdminHomeControllerImp());
    return Scaffold(
      key: controller.scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Padding(
        padding: EdgeInsets.only(
          top: Get.height * 0.037,
        ),
        child: CustomAdminDrawer(
          closeDrawer: () => controller.closeDrawer(),
          onTap: (index) => controller.goToScreen(index),
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
                      Row(
                        children: [
                          CustomAdminDrawerButton(
                            onTap: () => controller.openDrawer(),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          const CostomWelcomRichText(
                            text: AppStrings.admin,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      const CustomAdminSearchField(),
                    ],
                  ),
                ),
                Center(
                  child: Card(
                    margin: EdgeInsets.only(
                      top: Get.height * 0.25,
                    ),
                    color: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.9.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            CustomSaveMonthText(),
                            CustomCostText(),
                            CustomBarChart(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 2 / 1,
              children: const [
                CustomAdminItemBuild(
                  icon: AppIconAssets.iconMultiPerson,
                  title: AppStrings.applicationVisitors,
                  count: '9.8K',
                  rate: 10,
                ),
                CustomAdminItemBuild(
                  icon: AppIconAssets.iconMultiPerson,
                  title: AppStrings.newCostumer,
                  count: '20.5K',
                  rate: 10,
                ),
                CustomAdminItemBuild(
                  icon: AppIconAssets.iconChart,
                  title: AppStrings.totalNumberOrders,
                  count: '2.7M',
                  rate: 80,
                ),
                CustomAdminItemBuild(
                  icon: AppIconAssets.iconChart,
                  title: AppStrings.today,
                  count: '50.7',
                  rate: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/controller/patient_controller/patient_home_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/home/custom_build_products.dart';

import 'package:medical_app/core/shared/componnents/home/custom_hi_user_text.dart';
import 'package:medical_app/view/widgets/patient/home/custom_home_list_button.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_my_pic.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_title_text.dart';
import 'package:medical_app/core/shared/componnents/custom_search_field.dart';

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PatientHomeControllerImp());
    LayoutControllerImp controller = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                const CustomPaintAppCircularTop(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.055,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CustomHiUserText(),
                              CustomHomeTitleText(
                                text: AppStrings.findService,
                              ),
                            ],
                          ),
                          const CustomHomeMyPic(),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      const CustomSearchField(),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      const CustomHomeListButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              right: 20.w,
              left: 20.w,
              bottom: 15.h,
            ),
            sliver: CustomBuildProducts(
              onPressed: () {
                controller.changePage(4, 0);
              },
            ),
          ),
        ],
      ),
    );
  }
}

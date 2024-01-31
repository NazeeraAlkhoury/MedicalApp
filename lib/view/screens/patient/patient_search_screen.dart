import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/home/custom_hi_user_text.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_my_pic.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_title_text.dart';
import 'package:medical_app/core/shared/componnents/custom_search_field.dart';

class PatientSearchScreen extends StatelessWidget {
  const PatientSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                        height: Get.height * 0.038,
                      ),
                      const CustomSearchField(),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 50.h,
            ),
            sliver: SliverToBoxAdapter(
              child: SvgPicture.asset(AppImageAssets.imagemobileSearch),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:medical_app/core/shared/componnents/home/custom_hi_user_text.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_my_pic.dart';
import 'package:medical_app/core/shared/componnents/home/custom_home_title_text.dart';
import 'package:medical_app/view/widgets/service_provider/custom_sp_search_field.dart';

class SpSearchScreen extends StatelessWidget {
  const SpSearchScreen({super.key});

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
                                text: AppStrings.postService,
                              ),
                            ],
                          ),
                          const CustomHomeMyPic(),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.038,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.w, 4.h),
                              spreadRadius: 0,
                              blurRadius: 4.h,
                              blurStyle: BlurStyle.outer,
                              color: AppColors.shadowColor.withOpacity(0.01),
                            ),
                          ],
                        ),
                        child: const CustomSpSearchField(),
                      ),
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

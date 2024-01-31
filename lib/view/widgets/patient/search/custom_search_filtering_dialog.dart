import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/view/widgets/patient/search/custom_search_filter_item.dart';
import 'package:medical_app/view/widgets/patient/search/custom_search_options_text.dart';

import 'custom_closed_button.dart';

class CustomSearchFilteringDialog extends StatelessWidget {
  const CustomSearchFilteringDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Get.height / 4.4,
        bottom: Get.height / 3.7,
        left: Get.width * 0.08,
        right: Get.width * 0.08,
      ),
      padding: EdgeInsets.all(30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.whiteColor,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  AppStrings.filter.tr,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const Spacer(),
                const CustomClosedButton(),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
            sliver: const SliverToBoxAdapter(
              child: CustomOptionFilterText(),
            ),
          ),
          SliverToBoxAdapter(
            child: Wrap(spacing: 10.w, children: [
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: const CustomSearchFilterItem(
                  text: AppStrings.productsOrServices,
                  index: 0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: const CustomSearchFilterItem(
                  text: AppStrings.doctorSpecialty,
                  index: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: const CustomSearchFilterItem(
                  text: AppStrings.location,
                  index: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: const CustomSearchFilterItem(
                  text: AppStrings.distance,
                  index: 3,
                ),
              ),
            ]),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20.h),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: CustomAppButton(
                  text: AppStrings.save,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      // Row(
      //   children: [
      //     Text(
      //       AppStrings.filter.tr,
      //       style: Theme.of(context).textTheme.bodyText2,
      //     ),
      //     const Spacer(),
      //     GestureDetector(
      //       onTap: () {
      //         Get.back();
      //       },
      //       child: SvgPicture.asset(
      //         AppIconAssets.iconClosed,
      //         height: 9.h,
      //         width: 9.w,
      //       ),
      //     ),
      //   ],
      // ),
      //     Padding(
      //       padding: EdgeInsets.only(bottom: 10.h),
      // child: Text(
      //   AppStrings.readingOptions.tr,
      //   style: Theme.of(context).textTheme.caption,
      // ),
      //     ),
      // Wrap(spacing: 10.w, children: [
      //   Padding(
      //     padding: EdgeInsets.only(bottom: 10.h),
      //     child: const CustomSearchFilterItem(
      //       text: AppStrings.productsOrServices,
      //       index: 0,
      //     ),
      //   ),

      //   Padding(
      //     padding: EdgeInsets.only(bottom: 10.h),
      //     child: const CustomSearchFilterItem(
      //       text: AppStrings.doctorSpecialty,
      //       index: 1,
      //     ),
      //   ),
      //   // SizedBox(
      //   //   height: 5,
      //   // ),
      //   Padding(
      //     padding: EdgeInsets.only(bottom: 10.h),
      //     child: const CustomSearchFilterItem(
      //       text: AppStrings.location,
      //       index: 2,
      //     ),
      //   ),
      //   // SizedBox(
      //   //   height: 5,
      //   // ),
      //   Padding(
      //     padding: EdgeInsets.only(bottom: 10.h),
      //     child: const CustomSearchFilterItem(
      //       text: AppStrings.distance,
      //       index: 3,
      //     ),
      //   ),
      // ]),
      //     const Spacer(),
      // Center(
      //   child: CustomAppButton(
      //     text: AppStrings.save,
      //     onPressed: () {},
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}

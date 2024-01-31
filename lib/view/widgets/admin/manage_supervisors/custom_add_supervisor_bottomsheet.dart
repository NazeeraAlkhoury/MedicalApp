import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_body_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_title_text.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_container_top_bottomsheet.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_bottomsheet_button.dart';

class CustomAddSupervisorBottomSheet extends StatelessWidget {
  const CustomAddSupervisorBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.251,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Center(
              child: CustomContainerTopBottomSheet(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
            ),
            sliver: const SliverToBoxAdapter(
              child: CustomBottomSheetTitleText(text: AppStrings.addSupervisor),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 20.w,
            ),
            sliver: const SliverToBoxAdapter(
              child:
                  CustomBottomSheetBodyText(text: AppStrings.sureAddSupervisor),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
              end: 50.w,
            ),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomBottomSheettButton(
                      text: AppStrings.cancel,
                      onTap: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    CustomBottomSheettButton(
                      text: AppStrings.add,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

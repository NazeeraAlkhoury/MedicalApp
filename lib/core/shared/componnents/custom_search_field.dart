import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/search_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/view/widgets/patient/search/custom_filtering_icon_button.dart';
import 'package:medical_app/view/widgets/patient/search/custom_location_icon_button.dart';

class CustomSearchField extends StatelessWidget {
  final bool? isNearest;
  const CustomSearchField({
    Key? key,
    this.isNearest = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SearchControllerImp());
    return Container(
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
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyText2,
        decoration: InputDecoration(
          hintText: AppStrings.searchField.tr,
          hintStyle:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14.sp),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.w, vertical: 14.h),
          filled: true,
          fillColor: AppColors.whiteColor,
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w),
            child: SvgPicture.asset(
              AppIconAssets.iconSearch,
              color: AppColors.primaryColor,
              height: 20.h,
            ),
          ),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              !isNearest!
                  ? const CustomLocationIconButton()
                  : SvgPicture.asset(AppIconAssets.iconNearestLocation),
              const CustomFiltiringIconButton(),
              SizedBox(
                width: Get.width * 0.032,
              )
            ],
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}

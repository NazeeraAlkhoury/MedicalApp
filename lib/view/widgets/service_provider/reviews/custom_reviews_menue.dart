import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomReviewsMenue extends StatelessWidget {
  final List items;
  final Object? val;
  final Function(Object?)? onChanged;
  const CustomReviewsMenue({
    Key? key,
    required this.items,
    this.val,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: SvgPicture.asset(AppIconAssets.iconmenue),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item.toString().tr,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )
            .toList(),
        value: val,
        dropdownStyleData: DropdownStyleData(
          width: Get.width * 0.6,
          padding: EdgeInsetsDirectional.only(
            top: Get.width * 0.05,
            bottom: Get.width * 0.05,
          ),
          maxHeight: Get.height * 0.36,
          scrollbarTheme: ScrollbarThemeData(
            minThumbLength: Get.height * 0.003,
            thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
            radius: Radius.circular(15.r),
            thickness: MaterialStateProperty.all(8),
            thumbVisibility: MaterialStateProperty.all(true),
            crossAxisMargin: 2.w,
            mainAxisMargin: 15.h,
          ),
          elevation: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.whiteColor),
          ),
          offset: Offset(-Get.width * 0.6, -Get.height * 0.01),
        ),
        onChanged: onChanged,
        menuItemStyleData: MenuItemStyleData(
          selectedMenuItemBuilder: (context, child) => Container(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
            color: AppColors.primaryColor,
            child: Text(
              val!.toString().tr,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: AppColors.whiteColor,
                  ),
            ),
          ),
          padding: EdgeInsetsDirectional.only(
            start: Get.width * 0.08,
          ),
        ),
      ),
    );
  }
}

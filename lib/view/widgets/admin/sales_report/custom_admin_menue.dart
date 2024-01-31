import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

class CustomAdminMenue extends StatelessWidget {
  final Function(Object?)? onChanged;
  final Object? selectedItem;
  final List items;
  final Widget? widget;
  const CustomAdminMenue({
    Key? key,
    this.onChanged,
    this.selectedItem,
    required this.items,
    this.widget = const CustomServiceProviderOptions(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: widget,
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 30.w),
                  child: Text(
                    item.toString().tr,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            )
            .toList(),
        value: selectedItem,
        onChanged: onChanged,
        dropdownStyleData: DropdownStyleData(
          width: Get.width * 0.7,
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

          // padding: EdgeInsetsDirectional.only(
          //   top: Get.width * 0.05,
          //   bottom: Get.width * 0.05,
          // ),
          elevation: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.whiteColor),
          ),
          offset: Offset(-Get.width * 0.7, -Get.height * 0.01),
        ),
        menuItemStyleData: MenuItemStyleData(
          selectedMenuItemBuilder: (context, child) => Container(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
            color: AppColors.primaryColor,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30.w,
              ),
              child: Text(
                selectedItem.toString().tr,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColors.whiteColor,
                    ),
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

class CustomServiceProviderOptions extends StatelessWidget {
  const CustomServiceProviderOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.serviceProviderName.tr,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 11.sp,
              ),
        ),
        SizedBox(
          width: Get.width * 0.01,
        ),
        SvgPicture.asset(AppIconAssets.iconUpDown),
      ],
    );
  }
}

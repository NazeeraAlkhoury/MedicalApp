import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomAdminDropDownFormField extends StatelessWidget {
  final List list;

  final void Function(Object?)? onChanged;
  final String? selectedVal;
  final String hintText;
  final double? end;
  const CustomAdminDropDownFormField({
    super.key,
    required this.list,
    this.onChanged,
    required this.selectedVal,
    required this.hintText,
    this.end = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      items: list
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 13.sp),
              ),
            ),
          )
          .toList(),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsetsDirectional.only(
          end: Get.width * end!,
        ),
        height: Get.height * 0.06,
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
      iconStyleData: IconStyleData(
        icon: SvgPicture.asset(
          AppIconAssets.iconUpDown,
        ),
      ),
      value: selectedVal,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 11.sp,
          ),
      hint: Text(
        hintText.tr,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 11.sp,
            ),
      ),
      isExpanded: true,
      onChanged: onChanged,
      dropdownStyleData: DropdownStyleData(
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
        elevation: 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
        ),
        offset: Offset(0, -Get.height * 0.02),
      ),
      menuItemStyleData: MenuItemStyleData(
        selectedMenuItemBuilder: (context, child) => Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
          color: AppColors.primaryColor,
          child: Text(
            selectedVal!,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: AppColors.whiteColor, fontSize: 13.sp),
          ),
        ),
        padding: EdgeInsetsDirectional.only(
          start: Get.width * 0.08,
        ),
      ),
    );
  }
}

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomDropDownFormField extends StatelessWidget {
  final List list;
  final void Function(Object?)? onSaved;
  final void Function(Object?)? onChanged;
  final String? selectedVal;
  final String hintText;
  const CustomDropDownFormField({
    super.key,
    required this.list,
    this.onSaved,
    this.onChanged,
    required this.selectedVal,
    required this.hintText,
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
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          )
          .toList(),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsetsDirectional.only(
          end: Get.width * 0.04,
        ),
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
      iconStyleData: IconStyleData(
        iconDisabledColor: AppColors.greyColor,
        iconEnabledColor: AppColors.primaryColor,
        icon: SvgPicture.asset(
          AppIconAssets.iconArrowDwon,
        ),
      ),
      value: selectedVal,
      hint: Text(
        hintText.tr,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: AppColors.greyColor,
              fontSize: 13.sp,
            ),
      ),
      isExpanded: true,
      onChanged: onChanged,
      onSaved: onSaved,
      dropdownStyleData: DropdownStyleData(
        // padding: EdgeInsetsDirectional.only(
        //   top: Get.width * 0.05,
        //   bottom: Get.width * 0.05,
        // ),
        maxHeight: Get.height * 0.25,
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
          border: Border.all(color: AppColors.primaryColor),
        ),
        offset: Offset(0, -Get.height * 0.02),
      ),
      menuItemStyleData: MenuItemStyleData(
        selectedMenuItemBuilder: (context, child) => Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
          color: AppColors.primaryColor,
          child: Text(
            selectedVal!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.whiteColor,
                ),
          ),
        ),
        padding: EdgeInsetsDirectional.only(
          start: Get.width * 0.08,
        ),
      ),
    );
  }
}

 // decoration: InputDecoration(
      //   // contentPadding: EdgeInsets.symmetric(
      //   //   vertical: 5.h,
      //   // ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(8.r),
      //     borderSide: BorderSide(color: AppColors.lightGreyColor),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(8.r),
      //     borderSide: BorderSide(color: AppColors.primaryColor),
      //   ),
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(8.r),
      //     borderSide: BorderSide(color: AppColors.lightGreyColor),
      //   ),
      //   fillColor: AppColors.lightGreyColor,
      //   filled: true,
      // ),
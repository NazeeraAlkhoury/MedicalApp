import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/search_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomSearchFilterItem extends StatelessWidget {
  final String text;
  final int index;

  const CustomSearchFilterItem({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchControllerImp>(builder: (controller) {
      return MaterialButton(
        height: Get.height * 0.052,
        minWidth: Get.width * 0.1,
        color: controller.isSelectList[index]
            ? AppColors.lightGreyColor
            : AppColors.whiteColor,
        onPressed: () {
          controller.selectFilterType(index);
        },
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: controller.isSelectList[index]
                ? AppColors.lightGreyColor
                : AppColors.primaryColor,
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (controller.isSelectList[index])
                Icon(
                  Icons.check,
                  color: AppColors.blackaccentColor,
                ),
              Text(
                text.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 14.sp,
                      color: controller.isSelectList[index]
                          ? AppColors.blackaccentColor
                          : AppColors.greyColor,
                    ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

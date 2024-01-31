import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:medical_app/controller/layout/layout_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/data/datasource/static/bottom_nav_bar_static.dart';

import 'package:medical_app/core/shared/componnents/bottom_navigation_bar/custom_bottom_nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutControllerImp>(
      builder: (controller) => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(2.w, 0.h),
              spreadRadius: 0,
              blurRadius: 20.h,
              blurStyle: BlurStyle.outer,
              color: AppColors.shadowColor.withOpacity(0.18),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(bottomBarList.length, (index) {
                //controller.pagesList.length
                return CustomBottomNavBarItem(
                  bottomNavBarModel: bottomBarList[index],
                  onPressed: () {
                    // controller.changePage(index);
                    controller.changePage(index, index);
                  },
                  isActive: controller.currentButton == index ? true : false,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

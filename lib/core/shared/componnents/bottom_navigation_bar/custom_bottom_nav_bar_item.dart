import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/data/model/bottom_nav_bar_model.dart';

class CustomBottomNavBarItem extends StatelessWidget {
  final BottomNavBarModel bottomNavBarModel;
  final void Function()? onPressed;
  final bool? isActive;
  const CustomBottomNavBarItem({
    Key? key,
    required this.bottomNavBarModel,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: isActive!
                      ? AppColors.bottombarbackgrouSelColor
                      : Colors.transparent,
                ),
                child: Padding(
                  padding:
                      bottomNavBarModel.iconAssest == AppIconAssets.iconOrder
                          ? EdgeInsets.all(5.h)
                          : EdgeInsets.all(0.h),
                  child: SvgPicture.asset(
                    bottomNavBarModel.iconAssest,
                    color: isActive == true
                        ? AppColors.primaryColor
                        : AppColors.greyaccentColor,
                  ),
                )),
            Text(
              bottomNavBarModel.title.tr,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: isActive == true
                      ? AppColors.primaryColor
                      : AppColors.greyaccentColor,
                  fontSize: 10.sp),
            ),
          ],
        ),
      ),
    );
  }
}

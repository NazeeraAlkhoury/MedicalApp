import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomAdminItemBuild extends StatelessWidget {
  final String icon;
  final String title;
  final String count;
  final int rate;
  const CustomAdminItemBuild({
    Key? key,
    required this.icon,
    required this.title,
    required this.count,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      // height: Get.height * 0.1,
      // width: Get.width * 0.41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Row(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 8.76.sp,
                      ),
                ),
                Text(
                  count,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppIconAssets.iconAdminTo),
                    Text(
                      '+$rate%',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 8.7),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}

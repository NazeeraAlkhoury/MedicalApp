import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/constants/app_themes/app_themes.dart';
import 'package:medical_app/core/localizations/locale_controller.dart';

class CustomListTileProfile extends GetView<LocaleController> {
  final String title;
  final String leadingIcon;
  final bool? islocation;
  final bool? isLogout;
  final void Function()? onTap;
  const CustomListTileProfile({
    Key? key,
    required this.title,
    required this.leadingIcon,
    this.onTap,
    this.islocation = false,
    this.isLogout = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title.tr,
        style: Theme.of(context).textTheme.headline3!.copyWith(
              fontSize: 16.9.sp,
            ),
      ),
      trailing: !isLogout!
          ? SvgPicture.asset(
              controller.appTheme == AppTheme.customArabicTheme
                  ? AppIconAssets.iconNavArrowLeft
                  : AppIconAssets.iconNavArrowRight,
              height: 12.h,
            )
          : null,
      leading: CircleAvatar(
        backgroundColor: AppColors.accentColor.withOpacity(.55),
        radius: 18.r,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: islocation! ? 8.h : 0.h),
          child: SvgPicture.asset(leadingIcon),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_themes/app_fonts.dart';

ThemeData arabicTheme = ThemeData(
  primarySwatch: const MaterialColor(0xFF1F2B6C, {
    50: Color(0xFFE3F2FD),
    100: Color(0xFFBBDEFB),
    200: Color(0xFF90CAF9),
    300: Color(0xFF64B5F6),
    400: Color(0xFF42A5F5),
    500: Color(0xFF1E88E5),
    600: Color(0xFF1976D2),
    700: Color(0xFF1565C0),
    800: Color(0xFF0D47A1),
    900: Color(0xFF011970),
  }),
  scaffoldBackgroundColor: AppColors.whiteColor,
  //textTheme
  fontFamily: AppFontFamily.fontFamilyTajawal,
  textTheme: TextTheme(
    // headline1: TextStyle(
    //   fontWeight: AppFontWeight.medium,
    //   fontSize: 40.sp,
    //   color: AppColors.blackColor,
    //   letterSpacing: 0.65,
    // ),
    headline1: TextStyle(
      fontWeight: AppFontWeight.light,
      fontSize: 6.45.sp,
      color: AppColors.greyColor,
    ),
    headline2: TextStyle(
      fontWeight: AppFontWeight.regular,
      fontSize: 10.sp, //12
      color: AppColors.secondaryColor, //red
    ),
    headline3: TextStyle(
      fontWeight: AppFontWeight.medium,
      fontSize: 7.sp,
      color: AppColors.blackColor,
    ),
    headline4: TextStyle(
      fontWeight: AppFontWeight.bold,
      fontSize: 12.sp,
      color: AppColors.blackColor,
    ),
    headline5: TextStyle(
      fontWeight: AppFontWeight.regular,
      fontSize: 20.sp,
      color: AppColors.whiteColor,
    ),
    bodyText2: TextStyle(
      fontWeight: AppFontWeight.regular,
      fontSize: 15.sp,
      color: AppColors.primaryColor,
    ),
    caption: TextStyle(
      fontWeight: AppFontWeight.regular,
      fontSize: 16.sp,
      color: AppColors.greyColor,
      height: 1.5.h,
    ),
    subtitle1: TextStyle(
      fontWeight: AppFontWeight.bold,
      fontSize: 20.sp, //18//24//26
      color: AppColors.primaryColor,
    ),
    subtitle2: TextStyle(
      fontWeight: AppFontWeight.medium,
      fontSize: 16.sp,
      color: AppColors.primaryColor,
    ),
  ),

  //divider
  dividerTheme: DividerThemeData(
    color: AppColors.dividerColor,
  ),

  //Drawer
  drawerTheme: DrawerThemeData(
    width: Get.width * 0.63,
    backgroundColor: AppColors.primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        bottomLeft: Radius.circular(24),
      ),
    ),
  ),
);

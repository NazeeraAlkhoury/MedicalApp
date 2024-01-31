// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_themes/app_themes.dart';
import 'package:medical_app/core/services/my_services.dart';

class LocaleController extends GetxController {
  MyServices myServices = Get.find<MyServices>();

  Locale? language;
  String? sharedPrefLangCode;

  late ThemeData appTheme;
  changeLang() {
    sharedPrefLangCode = myServices.sharedPreferences.getString('langCode');
    if (sharedPrefLangCode == 'en') {
      Locale newLocale = const Locale('ar');
      myServices.sharedPreferences.setString('langCode', 'ar');
      appTheme = AppTheme.customArabicTheme;
      Get.changeTheme(appTheme);
      Get.updateLocale(newLocale);
    } else if (sharedPrefLangCode == 'ar') {
      Locale newLocale = const Locale('en');
      myServices.sharedPreferences.setString('langCode', 'en');
      appTheme = AppTheme.customEnglishTheme;
      Get.changeTheme(appTheme);
      Get.updateLocale(newLocale);
    }
  }

  @override
  void onInit() {
    sharedPrefLangCode = myServices.sharedPreferences.getString('langCode');
    if (sharedPrefLangCode == 'en') {
      language = const Locale('en');
      appTheme = AppTheme.customEnglishTheme;

      print('oninit : en');
    } else if (sharedPrefLangCode == 'ar') {
      language = const Locale('ar');
      appTheme = AppTheme.customArabicTheme;

      print('oninit : ar');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      myServices.sharedPreferences
          .setString('langCode', Get.deviceLocale!.languageCode);
      appTheme = Get.deviceLocale!.languageCode == 'en'
          ? AppTheme.customEnglishTheme
          : AppTheme.customArabicTheme;

      print('oninit : ${Get.deviceLocale!.languageCode} nnnnnnnn');
    }
    super.onInit();
  }
}

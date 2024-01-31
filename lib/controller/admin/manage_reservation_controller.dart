import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';

import 'package:medical_app/core/localizations/app_strings.dart';

abstract class ManageReservationController extends GetxController {
  openDrawer();
  closeDrawer();
  onChangeItemMonthMenue(Object? value);
  onChangeItemYearMenue(Object? value);
  getCurrentData(int index, int itemsPerPage, List data);
  int getTotalPage(List data, int itemsPerPage);
  void changePage(int indexPage);
  void goToPage(int indexPage);
  void previousPage();
  void nextPage();
  goToScreenUsingDrawer(int index);
}

class ManageReservationControllerImp extends ManageReservationController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late PageController pageController;

  String? selectedMonth;
  String? selectedYear;

  int currentPage = 0;
  int totalPageNumber = 0;

  final List<String> yearsItems = [
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
  ];
  final List<String> monthsItems = [
    'jun',
    'feb',
    'marc',
    'aprile',
    'may',
    'july',
  ];

  final List<String> items = [
    AppStrings.edit,
    AppStrings.delete,
    AppStrings.review,
  ];

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  @override
  onChangeItemMonthMenue(Object? value) {
    selectedMonth = value as String?;
    update();
  }

  @override
  onChangeItemYearMenue(Object? value) {
    selectedYear = value as String?;
    update();
  }

  @override
  getCurrentData(int index, int itemsPerPage, List data) {
    final start = index * itemsPerPage;
    final end = (index + 1) * itemsPerPage;
    final currentData =
        data.sublist(start, end < data.length ? end : data.length);

    return currentData;
  }

  @override
  void changePage(int indexPage) {
    currentPage = indexPage;
  }

  @override
  int getTotalPage(List data, int itemsPerPage) {
    totalPageNumber = (data.length / itemsPerPage).ceil();
    return totalPageNumber;
  }

  @override
  void goToPage(int indexPage) {
    pageController.jumpToPage(indexPage);
  }

  @override
  void previousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linearToEaseOut);
    }
  }

  @override
  void nextPage() {
    if (currentPage < totalPageNumber - 1) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linearToEaseOut);
    }
  }

  @override
  goToScreenUsingDrawer(int index) {
    switch (index) {
      case 0:
        Get.offNamed(AppRoutes.userManagmentRoute);
        break;
      case 1:
        Get.offNamed(AppRoutes.registrationRequestsRoute);
        break;
      case 2:
        Get.offNamed(AppRoutes.manageSupervisorsRoute);
        break;
      case 3:
        Get.offNamed(AppRoutes.salesReportRoute);
        break;
      case 4:
        Get.offNamed(AppRoutes.serviceManagmentRoute);
        break;
      case 5:
        Get.back();
        break;
      case 6:
        Get.back();
        openLogoutBottomSheet();
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

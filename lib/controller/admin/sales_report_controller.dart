import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/core/functions/open_logout_bottomsheet.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class SalesReportController extends GetxController {
  openDrawer();
  closeDrawer();
  onChangeItemNameMenue(Object? value);
  onChangeItemMonthMenue(Object? value);
  onChangeItemYearMenue(Object? value);
  getCurrentData(int index, int itemsPerPage, List data);
  int getTotalPage(List data, int itemsPerPage);
  void changePage(int indexPage);
  void goToPage(int indexPage);
  void previousPage();
  void nextPage();
  goToScreenUsingDrawer(int index);

//  List<int> getPageNumbers(int currentPage, int destinationPage);
}

class SalesReportControllerImp extends SalesReportController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late PageController pageController;

  List<String> columnLabel = [
    AppStrings.idOrder,
    AppStrings.productSrvice,
    AppStrings.status,
    AppStrings.date,
    AppStrings.price,
  ];

  final List<String> nameitems = [
    'Nazeera Alkoury',
    'soso Alkoury',
    'roro Alkoury',
    'fofo Alkoury',
    'zozo Alkoury',
    'ii Alkoury',
    'p Alkoury',
    '[roro] Alkoury',
    'n Alkoury',
    'm Alkoury',
  ];
  final List<String> yearsItems = [
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
  ];
  final List<String> monthsItems = [
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
  ];

  int currentPage = 0;
  int totalPageNumber = 0;
  double subTotalPrice = 0;

  String? selectedName;
  String? selectedMonth;
  String? selectedYear;

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
  onChangeItemNameMenue(Object? value) {
    selectedName = value as String?;
    update();
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
    subTotalPrice = currentData.fold(
        0.0, (previousValue, item) => previousValue + item.price);
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
        Get.back();
        break;
      case 4:
        Get.offNamed(AppRoutes.serviceManagmentRoute);
        break;
      case 5:
        Get.offNamed(AppRoutes.manageReservationRoute);
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

  // List<int> pageNumbers = [];

  // @override
  // List<int> getPageNumbers(int currentPage, int destinationPage) {
  //   if (currentPage <= 2) {
  //     pageNumbers = List.generate(3, (index) => index + currentPage);
  //     pageNumbers.add(-1);
  //     pageNumbers.add(destinationPage);
  //   } else {
  //     pageNumbers.add(currentPage);
  //     pageNumbers.add(-1);

  //     if (currentPage == destinationPage - 1) {
  //       pageNumbers.add(currentPage - 1);
  //     } else if (currentPage < destinationPage - 1) {
  //       pageNumbers.add(currentPage - 1);
  //       pageNumbers.add(destinationPage);
  //     }
  //   }
  //   return pageNumbers;
  // }
}

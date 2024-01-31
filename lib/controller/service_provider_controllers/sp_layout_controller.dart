// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:medical_app/view/screens/service_provider/sp_home_screen.dart';
// import 'package:medical_app/view/screens/service_provider/sp_profile_bar_screen.dart';
// import 'package:medical_app/view/screens/service_provider/sp_search_screen.dart';
// import 'package:medical_app/view/screens/service_provider/sp_upcoming_order_screen.dart';

// abstract class SpLayoutController extends GetxController {
//   changePage({required int indexPage, required int indexButton});
// }

// class SpLayoutControllerImp extends SpLayoutController {
//   int currentPage = 0;
//   int currentButton = 0;

//   List<Widget> spPagesList = const [
//     SpHomeScreen(), //0
//     SpSearchScreen(), //1
//     SpUpComingOrderScreen(), //2
//     SpProfileBarScreen(), //3
//   ];

//   @override
//   changePage({required int indexPage, required int indexButton}) {
//     currentButton = indexButton;
//     currentPage = indexPage;

//     print(indexPage.toString());
//     print(indexButton.toString());

//     update();
//   }
// }

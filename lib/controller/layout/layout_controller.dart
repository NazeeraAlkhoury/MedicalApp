// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medical_app/view/screens/patient/patient_fined_the_nearest_point_screen.dart';
import 'package:medical_app/view/screens/patient/patient_order_tracking_screen.dart';
import 'package:medical_app/view/screens/patient/patient_orders_screen.dart';
import 'package:medical_app/view/screens/patient/patient_home_screen.dart';
import 'package:medical_app/view/screens/patient/patient_payment_methodes_screen.dart';
import 'package:medical_app/view/screens/patient/patient_personal_detailes.dart';
import 'package:medical_app/view/screens/patient/patient_product_reviews_screen.dart';
import 'package:medical_app/view/screens/patient/patient_profile_bar_screen.dart';
import 'package:medical_app/view/screens/patient/patient_reservation_screen.dart';
import 'package:medical_app/view/screens/patient/patient_search_screen.dart';
import 'package:medical_app/view/screens/patient/patient_your_location_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_edit_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_home_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_payment_methods_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_personal_details.dart';
import 'package:medical_app/view/screens/service_provider/sp_profile_bar_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_review_of_service_or_product_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_reviews_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_search_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_order_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_your_location_screen.dart';

abstract class LayoutController extends GetxController {
  changePage(int indexPage, int indexButton);
}

class LayoutControllerImp extends LayoutController {
  int currentPage = 0;
  int currentButton = 0;
  List<Widget> patientpagesList = const [
    PatientHomeScreen(),
    PatientSearchScreen(),
    PatientOrdersScreen(),
    PatientProfileBarScreen(),
    PatientProductReviewsScreen(),
    PatientReservationScreen(),
    PatientOrderTrackingScreen(),
    PatientOrdersScreen(),
    PatientPersonalDetailes(),
    PatientYourLocationScreen(),
    PatientPaymentMethodScreen(),
    PatientFinedTheNearestScreen(),
  ];

  List<Widget> spPagesList = const [
    SpHomeScreen(),
    SpSearchScreen(),
    SpOrderScreen(),
    SpProfileBarScreen(),
    SpPersonalDetailes(),
    SpEditScreen(),
    SpYourLocationScreen(),
    SpPaymentMethodScreen(),
    SpReviewServicsOrProdScreen(),
    SpReviewsScreen(),
  ];

  @override
  changePage(int indexPage, int indexButton) {
    // currentPage = indexPage;
    currentButton = indexButton;
    currentPage = indexPage;
    print(indexPage.toString());
    print(indexButton.toString());
    update();
  }
}

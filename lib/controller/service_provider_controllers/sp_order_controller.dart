import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_builder_canceled_orders.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_builder_completed_orders.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_builder_upcoming_orders.dart';

abstract class SpOrderController extends GetxController {
  changeStep(int index);
  //changeListOrders();
}

class SpOrderControllerImp extends SpOrderController {
  int currentStep = 0;
  //Widget? widget;

  List<String> steperTitleList = [
    AppStrings.upcoming,
    AppStrings.completed,
    AppStrings.cancelled,
  ];

  List<Widget> ordersList = const [
    CustomBuilderUpComingOrders(),
    CustomBuilderCompletedOrders(),
    CustomBuilderCanceledOrders(),
  ];

  @override
  changeStep(int index) {
    currentStep = index;
    update();
  }

  // @override
  // changeListOrders() {
  //   switch (currentStep) {
  //     case 0:
  //       widget = const CustomBuilderUpComingOrders();

  //       break;
  //     case 1:
  //       widget = const CustomBuilderCompletedOrders();

  //       break;
  //     case 2:
  //       widget = const CustomBuilderCanceledOrders();

  //       return widget;
  //   }
  // }
}

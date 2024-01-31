import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_reservation_controller.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_payment_method_page.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_select_location_page.dart';

class CustomReservationPageView
    extends GetView<PatientReservationControllerImp> {
  const CustomReservationPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.3387,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.changePage(index);
        },
        children: const [
          CustomSelectLocationPage(),
          CustomPaymentMethodPage(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_reservation_controller.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_progress_indicator.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_reservation_page_view.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_reservation_top.dart';

class PatientReservationScreen extends StatelessWidget {
  const PatientReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PatientReservationControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomReservationTop(),
          ),
          const SliverToBoxAdapter(
            child: CustomReservationPageView(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 20.h,
              left: 150.w,
              right: 150.w,
            ),
            sliver: const SliverToBoxAdapter(
              child: CustomProgressIndicator(),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: GetBuilder<PatientReservationControllerImp>(
                builder: (controller) => CustomAppButton(
                  text: controller.currentPage == 0
                      ? AppStrings.next
                      : AppStrings.done,
                  onPressed: () {
                    controller.next();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

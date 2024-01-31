import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_reservation_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomProgressItem extends StatelessWidget {
  final int index;
  const CustomProgressItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientReservationControllerImp>(builder: (mycontroller) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: Container(
          height: 8.h,
          width: mycontroller.currentPage == index ? 30.w : 8.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: mycontroller.currentPage == index
                ? AppColors.primaryColor
                : AppColors.greyColor,
          ),
        ),
      );
    });
  }
}

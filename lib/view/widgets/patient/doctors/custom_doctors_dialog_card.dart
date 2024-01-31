import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/view/widgets/patient/doctors/custom_close_button.dart';
import 'package:medical_app/view/widgets/patient/doctors/custom_doctors_grid_view.dart';

class CustomDoctorsDialogCard extends StatelessWidget {
  const CustomDoctorsDialogCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 200.h,
        horizontal: 17.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h, top: 3.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomClosedButton(),
              CustomDoctorsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

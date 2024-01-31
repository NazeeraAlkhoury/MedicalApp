import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/data/datasource/static/patient/doctors_static.dart';
import 'package:medical_app/view/widgets/patient/doctors/custom_doctors_card_item.dart';

class CustomDoctorsGridView extends StatelessWidget {
  const CustomDoctorsGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.8.h,
        childAspectRatio: 1 / 1,
      ),
      itemCount: doctorsList.length,
      itemBuilder: (context, index) => CustomDoctorsCardItem(
        doctorsModel: doctorsList[index],
      ),
    );
  }
}

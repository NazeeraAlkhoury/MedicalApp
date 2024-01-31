import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/view/widgets/patient/reservation/custom_progress_item.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.009,
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) => CustomProgressItem(
            index: index,
          ),
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10.w,
            );
          },
        ),
      ),
    );
  }
}

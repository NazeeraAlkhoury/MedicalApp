import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medical_app/controller/service_provider_controllers/sp_review_controller.dart';
import 'package:medical_app/core/shared/componnents/review/custom_available_time_button.dart';

class CustomSpAvailableTimes extends GetView<SpReviewsControllerImp> {
  const CustomSpAvailableTimes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: controller.availableTimesList.length,
        (context, index) =>
            GetBuilder<SpReviewsControllerImp>(builder: (mycontroller) {
          return AvailableTimeButton(
            time: mycontroller.availableTimesList[index],
            onPressed: (() {
              mycontroller.pickTime(index);
            }),
            isActiveTime: mycontroller.timeIndex == index ? true : false,
          );
        }),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1 / 0.5,
        crossAxisSpacing: Get.width * 0.028,
        mainAxisSpacing: Get.height * 0.013,
      ),
    );
  }
}

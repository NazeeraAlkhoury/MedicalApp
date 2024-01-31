import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/sp_review_controller.dart';
import 'package:medical_app/core/shared/componnents/review/custom_date_item_build.dart';
import 'package:medical_app/data/datasource/static/patient/available_dates_list.dart';

class CustomSpBuilderDate extends StatelessWidget {
  const CustomSpBuilderDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.063,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            GetBuilder<SpReviewsControllerImp>(builder: (controller) {
          return CustomDateItemBuild(
            model: availableDatesList[index],
            onPressed: () {
              controller.pickDate(index);
            },
            isActive: controller.dateIndex == index ? true : false,
          );
        }),
        itemCount: availableDatesList.length,
      ),
    );
  }
}

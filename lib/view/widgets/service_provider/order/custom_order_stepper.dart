import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/sp_order_controller.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_stepper_item.dart';

class CustomOrdersStepper extends StatelessWidget {
  const CustomOrdersStepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.0498,
      child: GetBuilder<SpOrderControllerImp>(builder: (controller) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              controller.steperTitleList.length,
              (index) => CustomStepperItem(
                  onPressed: () {
                    controller.changeStep(index);
                  },
                  orderCount: 8,
                  text: controller.steperTitleList[index],
                  isActive: controller.currentStep == index ? true : false),
            ),
          ],
        );
      }),
    );
  }
}

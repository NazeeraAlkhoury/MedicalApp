import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/patient_controller/patient_home_controller.dart';
import 'package:medical_app/view/widgets/patient/home/custom_button_item.dart';

class CustomHomeListButton extends StatelessWidget {
  const CustomHomeListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PatientHomeControllerImp homeControllerImp =
        Get.find<PatientHomeControllerImp>();
    return SizedBox(
      height: Get.height * 0.052,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: homeControllerImp.textButtonList.length,
        itemBuilder: (context, index) => GetBuilder<PatientHomeControllerImp>(
          builder: (controller) => CustomButtonItem(
            onPressed: () {
              controller.onPressedSelectButton(index);
            },
            textButton: controller.textButtonList[index],
            isSelected: controller.isSelectButton[index],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: Get.width * 0.02,
          );
        },
      ),
    );
  }
}

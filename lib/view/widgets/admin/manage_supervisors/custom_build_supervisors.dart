import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/view/widgets/admin/manage_supervisors/custom_supervisor_item_builder.dart';

class CustomBuildSupervisors extends StatelessWidget {
  const CustomBuildSupervisors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const CustomSupervisorsItemBuilder(),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
      itemCount: 5,
    );
  }
}

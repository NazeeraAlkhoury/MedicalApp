import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/view/widgets/admin/registration_requests/registration_request_item_builder.dart';

class BuildRegisterationRequests extends StatelessWidget {
  const BuildRegisterationRequests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const RegistrationRequestItemBuilder(),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
      itemCount: 5,
    );
  }
}

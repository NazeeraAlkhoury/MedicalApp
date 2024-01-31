import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_profile_controller.dart';

import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/view/widgets/auth/profile/custom_pick_image_button.dart';

class CustomPatientPictureProfile extends StatelessWidget {
  const CustomPatientPictureProfile({super.key});

  @override
  Widget build(BuildContext context) {
    PatientProfileControllerImp controller =
        Get.find<PatientProfileControllerImp>();
    return Stack(
      children: [
        Obx(
          () {
            if (controller.fileImage.value != null) {
              return CircleAvatar(
                radius: 53.r,
                backgroundColor: AppColors.primaryColor,
                child: CircleAvatar(
                  radius: 44.r,
                  backgroundImage: FileImage(controller.fileImage.value!),
                ),
              );
            } else {
              return SvgPicture.asset(AppImageAssets.imageEllipse149);
            }
          },
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: 55.h,
          ),
          child: const Align(
            alignment: Alignment.bottomRight,
            child: CustomPicKImageButton(),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/patient_controllers/patient_profile_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomPicKImageButton extends GetView<PatientProfileControllerImp> {
  const CustomPicKImageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.pickImage();
      },
      child: CircleAvatar(
        radius: 12.r,
        backgroundColor: AppColors.lightGreyColor,
        child: SvgPicture.asset(AppIconAssets.iconCamera),
      ),
    );
  }
}

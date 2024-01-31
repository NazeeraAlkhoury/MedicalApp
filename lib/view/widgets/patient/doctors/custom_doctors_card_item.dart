import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/data/model/patient/doctors_model.dart';
import 'package:get/get.dart';

class CustomDoctorsCardItem extends StatelessWidget {
  final DoctorsModel doctorsModel;
  const CustomDoctorsCardItem({
    Key? key,
    required this.doctorsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.8.r),
      ),
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            doctorsModel.imageAssets,
            height: 40.h,
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            doctorsModel.text.tr,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.accentColor,
                  fontSize: 12.sp,
                ),
          ),
        ],
      ),
    );
  }
}

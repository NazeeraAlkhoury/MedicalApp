import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_reason_refused_text.dart';
import 'package:medical_app/view/widgets/service_provider/reason_of_refused/custom_reason_rejection_field.dart';

class CustomReasonRefused extends StatelessWidget {
  const CustomReasonRefused({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomReasonRefuseText(),
            CustomReasonRejectionField(),
          ],
        ),
      ),
    );
  }
}

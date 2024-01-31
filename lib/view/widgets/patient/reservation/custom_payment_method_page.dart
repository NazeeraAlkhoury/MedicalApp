import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_add_new_card.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_ayment_method_field.dart';
import 'package:medical_app/core/shared/componnents/payment_method.dart/custom_visa_edit_field.dart';

class CustomPaymentMethodPage extends StatelessWidget {
  const CustomPaymentMethodPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.673,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              const CustomVisaEditfield(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: const CustomPaymentMethField(),
              ),
              const CustomAddNewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detail_prod_type_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detal_prod_age_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detal_prod_name_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_price_rwo_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_prouct_image.dart';
import 'package:medical_app/data/datasource/static/patient/product_services_static.dart';

class CustomOrderRefusedDetails extends StatelessWidget {
  const CustomOrderRefusedDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.6,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.15,
          ),
          CustomProDetalNameText(
            name: productServiceList[1].name,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.5.h),
            child: CustomDetalProdAgeText(
              age: productServiceList[1].age,
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          CustomProductImage(
            height: Get.height * 0.1955,
            width: Get.width * 0.517,
            image: productServiceList[1].image,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Center(
              child: CustomPriceRwoText(
                price: productServiceList[1].price,
                newPrice: productServiceList[1].newPrice!,
                isSp: true,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: const CustomDetailsProdTypeText(
              text: 'nazeera khouri',
            ),
          ),
        ],
      ),
    );
  }
}

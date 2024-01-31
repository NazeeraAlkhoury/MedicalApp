import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/shared/componnents/home/custom_review_button.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';
import 'package:medical_app/core/shared/componnents/home/product/custom_age_text.dart';
import 'package:medical_app/core/shared/componnents/home/product/custom_name_text.dart';
import 'package:medical_app/core/shared/componnents/home/product/custom_new_price.dart';
import 'package:medical_app/core/shared/componnents/home/product/custom_price_text.dart';

class CustomProductServiceItemBuild extends StatelessWidget {
  final ProductServicesModel productServicesModel;
  final void Function() onPressed;
  const CustomProductServiceItemBuild({
    Key? key,
    required this.productServicesModel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomNameText(productServicesModel: productServicesModel),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.5.h),
              child: CustomAgeText(productServicesModel: productServicesModel),
            ),
            Text(productServicesModel.type,
                style: Theme.of(context).textTheme.headline1),
            Expanded(
              child: Image.asset(productServicesModel.image),
            ),
            Row(
              children: [
                CustomPriceText(productServicesModel: productServicesModel),
                if (productServicesModel.newPrice != null)
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: CustomNewPriceText(
                        productServicesModel: productServicesModel),
                  ),
                const Spacer(),
                CustomReviewButton(
                  onPressed: onPressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

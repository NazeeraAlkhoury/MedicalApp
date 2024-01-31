import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_card_button.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detail_prod_type_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detal_prod_name_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_price_rwo_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_prouct_image.dart';
import 'package:medical_app/core/shared/componnents/order/custom_order_date.dart';
import 'package:medical_app/core/shared/componnents/order/custom_order_state_text.dart';
import 'package:medical_app/core/shared/componnents/order/custom_quantity.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';

class OrderItemBuild extends StatelessWidget {
  // final int index;
  final ProductServicesModel model;
  final String? text;
  final void Function()? onPressed;
  const OrderItemBuild({
    Key? key,
    // required this.index,
    this.text = AppStrings.tracking,
    required this.model,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.35.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomProductImage(
                      image: model.image,

                      //productServiceList[1].image,
                      height: Get.height * 0.0721,
                      width: Get.width * 0.183,
                    ),
                    SizedBox(
                      width: Get.width * 0.032,
                    ),
                    Column(
                      children: [
                        CustomPriceRwoText(
                          price: model.price,
                          newPrice: model.newPrice,
                        ),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        const CustomQuantity(),
                      ],
                    ),
                  ],
                ),
                CustomProDetalNameText(
                  name: model.name,
                ),
                CustomDetailsProdTypeText(text: model.type),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                //orderStataus[index]
                CustomOrderStateText(state: model.state!),
                const CustomOrderDate(),
                SizedBox(
                  height: Get.height * 0.018,
                ),
                CustomCardButton(
                  color: AppColors.primaryColor,
                  text: text!,
                  onPressed: onPressed,
                ),
                // SizedBox(
                //   height: Get.height * 0.035,
                //   width: Get.width * 0.24,
                //   child: CustomAppButton(
                //     text: text!,
                //     onPressed: () {},
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

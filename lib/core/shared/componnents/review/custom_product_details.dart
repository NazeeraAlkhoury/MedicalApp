import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/controller/service_provider_controllers/sp_review_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';

import 'package:medical_app/core/shared/componnents/product_details/custom_detail_prod_type_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detal_prod_age_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_detal_prod_name_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_price_rwo_text.dart';
import 'package:medical_app/core/shared/componnents/product_details/custom_prouct_image.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';
import 'package:medical_app/view/widgets/service_provider/reviews/custom_reviews_menue.dart';

class CustomProductDetails extends StatelessWidget {
  final ProductServicesModel model;
  final bool? isSp;
  const CustomProductDetails({
    Key? key,
    required this.model,
    this.isSp = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SpReviewsControllerImp());

    return Container(
      height: Get.height * 0.3922,
      width: Get.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.62.r),
        color: AppColors.accentColor,
        boxShadow: [
          BoxShadow(
            color: HexColor('#000000').withOpacity(0.08),
            blurRadius: 15.4,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomProDetalNameText(
                    name: model.name,
                  ),
                  if (isSp!) const Spacer(),
                  if (isSp!)
                    GetBuilder<SpReviewsControllerImp>(builder: (controller) {
                      return CustomReviewsMenue(
                        items: controller.menueList,
                        val: controller.selectedValue,
                        onChanged: ((value) {
                          controller.onChangeItemMenue(value);
                        }),
                      );
                    }),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.5.h),
                child: CustomDetalProdAgeText(
                  age: model.age,
                ),
              ),
              CustomDetailsProdTypeText(
                text: model.type,
              ),
              CustomProductImage(
                height: Get.height * 0.1955,
                width: Get.width * 0.517,
                image: model.image,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: CustomPriceRwoText(
                  price: model.price,
                  newPrice: model.newPrice!,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: const CustomDetailsProdTypeText(
                  text: 'Service Provider',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


 


                  //                   PopupMenuButton(
                  //   elevation: 4,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8.r),
                  //   ),
                  //   itemBuilder: (context) {
                  //     return [
                  //       ...menueList.map(
                  //         (item) => PopupMenuItem(
                  //           child: Container(
                  //             width: 230.h,
                  //             color: AppColors.accentColor,
                  //             child: Text(
                  //               item.tr,
                  //               style: Theme.of(context).textTheme.bodyText2,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ];
                  //   },
                  // ),
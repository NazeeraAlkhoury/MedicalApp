import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/orders/order_item_build.dart';

class CustomBuilderOrders extends StatelessWidget {
  final List currentData;
  final void Function()? onPressed;
  const CustomBuilderOrders({
    Key? key,
    required this.currentData,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => OrderItemBuild(
        //  index: index,

        model: currentData[index],
        text: AppStrings.review, onPressed: onPressed,
      ),
      itemCount: currentData.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
    );
  }
}

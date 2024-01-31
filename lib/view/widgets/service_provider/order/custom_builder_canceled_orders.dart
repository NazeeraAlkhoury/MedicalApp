import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/data/datasource/static/service_provider/order_canceled_static.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_canceled_order_item_build.dart';

class CustomBuilderCanceledOrders extends StatelessWidget {
  const CustomBuilderCanceledOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomCanceledOrderItemBuild(
        orderModel: orderCanceledList[index],
      ),
      itemCount: orderCanceledList.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
    );
  }
}

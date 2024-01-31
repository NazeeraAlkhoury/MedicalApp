import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/data/datasource/static/service_provider/order_upcoming_static.dart';
import 'package:medical_app/view/widgets/service_provider/order/custom_upcoming_order_item_build.dart';

class CustomBuilderUpComingOrders extends StatelessWidget {
  const CustomBuilderUpComingOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomUpComingOrderItemBuild(
        orderModel: orderUpComingList[index],
      ),
      itemCount: orderUpComingList.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
    );
  }
}

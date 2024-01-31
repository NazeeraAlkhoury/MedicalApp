import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/sales_report_controller.dart';

import 'package:medical_app/data/datasource/static/admin/order_sales_list.dart';
import 'package:medical_app/view/widgets/admin/sales_report/custom_orders_sales_data_table.dart';
import 'package:medical_app/view/widgets/admin/sales_report/custom_subtotal_text.dart';

class CustomSalesReportPagination extends GetView<SalesReportControllerImp> {
  const CustomSalesReportPagination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: ((value) {
          controller.changePage(value);
        }),

        //physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.getTotalPage(orderSalesList, 6),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CustomOrderSalesDataTable(
                  currentData:
                      controller.getCurrentData(index, 6, orderSalesList),
                ),
                CustomSubtotalText(
                  subTotal: controller.subTotalPrice,
                ),
              ],
            ),
          );
        });
  }
}

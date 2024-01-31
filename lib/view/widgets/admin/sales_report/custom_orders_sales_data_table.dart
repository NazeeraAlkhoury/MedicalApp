import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/sales_report_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/functions/get_order_state_color.dart';
import 'package:medical_app/data/datasource/static/admin/order_sales_list.dart';

class CustomOrderSalesDataTable extends GetView<SalesReportControllerImp> {
  final List currentData;

  const CustomOrderSalesDataTable({
    Key? key,
    required this.currentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 11.w,
        columns: [
          ...List.generate(
            controller.columnLabel.length,
            (index) => DataColumn(
              label: Text(
                controller.columnLabel[index].tr,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 10.sp,
                    ),
              ),
            ),
          ),
        ],
        rows: [
          ...List.generate(
            currentData.length,
            (index) => DataRow(
              cells: [
                DataCell(
                  Text(
                    currentData[index].id,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
                DataCell(
                  Text(
                    currentData[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 10.sp),
                  ),
                ),
                DataCell(
                  Text(
                    currentData[index].state!,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color:
                              getOrderstateColor(orderSalesList[index].state!),
                        ),
                  ),
                ),
                DataCell(
                  Text(
                    currentData[index].date!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 8.7.sp),
                  ),
                ),
                DataCell(
                  Text(
                    '\$${currentData[index].price}',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 10.sp,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

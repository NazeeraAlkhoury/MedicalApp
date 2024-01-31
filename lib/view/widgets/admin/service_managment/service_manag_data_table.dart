import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/admin/service_managment_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/admin/sales_report/custom_admin_menue.dart';
import 'package:medical_app/view/widgets/admin/service_managment/custom_service_manag_optional_icon.dart';
import 'package:medical_app/view/widgets/admin/service_managment/custom_table_name_text.dart';
import 'package:medical_app/view/widgets/admin/service_managment/custom_table_text.dart';

class CustomServiceMangDataTable extends StatelessWidget {
  final List currentData;
  const CustomServiceMangDataTable({
    Key? key,
    required this.currentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ServiceManagmentControllerImp controller =
        Get.put(ServiceManagmentControllerImp());
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 14.w,
        headingRowColor: MaterialStatePropertyAll(AppColors.accentColor),
        columns: [
          ...List.generate(
            controller.columnLabel.length,
            (index) => DataColumn(
              label: Text(
                controller.columnLabel[index].tr,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontSize: 7.8.sp),
              ),
            ),
          ),
        ],
        rows: currentData
            .map(
              (e) => DataRow(cells: [
                DataCell(
                  Image.asset(
                    e.image!,
                    fit: BoxFit.fill,
                    width: 50.w,
                    height: 35.h,
                  ),
                ),
                DataCell(
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTableText(
                          text: e.name,
                        ),
                        const CustomTableNameText(),
                      ],
                    ),
                  ),
                ),
                DataCell(
                  CustomTableText(text: '\$${e.price}'),
                ),
                DataCell(
                  CustomTableText(text: '${e.discount}%'),
                ),
                DataCell(
                  CustomTableText(text: '${e.date}'),
                ),
                DataCell(
                  GetBuilder<ServiceManagmentControllerImp>(
                      builder: (controller) {
                    return CustomAdminMenue(
                      items: controller.items,
                      widget: const CustomServiceManagmentOptionalIcon(),
                      selectedItem: controller.selectedItem,
                      onChanged: (value) => controller.onChangeItemMenue(value),
                    );
                  }),
                ),
              ]),
            )
            .toList(),
      ),
    );
  }
}

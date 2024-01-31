import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/shared/componnents/home/custom_product_item_build.dart';
import 'package:medical_app/data/datasource/static/patient/product_services_static.dart';

class CustomBuildProducts extends StatelessWidget {
  final void Function() onPressed;
  const CustomBuildProducts({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: productServiceList.length,
        (context, index) => CustomProductServiceItemBuild(
          productServicesModel: productServiceList[index],
          onPressed: onPressed,
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.15,
        mainAxisSpacing: 12.h,
        crossAxisSpacing: 8.w,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';

class CustomPriceText extends StatelessWidget {
  const CustomPriceText({
    Key? key,
    required this.productServicesModel,
  }) : super(key: key);

  final ProductServicesModel productServicesModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${productServicesModel.price}',
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 8.33.sp),
    );
  }
}

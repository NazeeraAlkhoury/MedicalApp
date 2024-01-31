import 'package:flutter/material.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';

class CustomAgeText extends StatelessWidget {
  const CustomAgeText({
    Key? key,
    required this.productServicesModel,
  }) : super(key: key);

  final ProductServicesModel productServicesModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      productServicesModel.age,
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(color: AppColors.orangeAccent),
    );
  }
}

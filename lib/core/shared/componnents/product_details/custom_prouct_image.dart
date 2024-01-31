import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomProductImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  const CustomProductImage({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.14.r),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}

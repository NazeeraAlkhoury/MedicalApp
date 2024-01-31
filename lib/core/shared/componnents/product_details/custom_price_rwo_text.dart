import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomPriceRwoText extends StatelessWidget {
  final double price;
  final double? newPrice;
  final bool? isSp;
  const CustomPriceRwoText({
    Key? key,
    required this.price,
    this.newPrice,
    this.isSp = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$$price',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontSize: 14.sp, color: AppColors.primaryColor),
        ),
        if (newPrice != null)
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: Text(
              '\$$newPrice',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 10.48.sp,
                    color: AppColors.redColor,
                    decoration: isSp == true
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
            ),
          ),
      ],
    );
  }
}

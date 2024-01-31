import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomCheckBoxCard extends StatelessWidget {
  final String title;
  final bool? isCheck;
  final void Function(bool?)? onChanged;
  final Color color;
  const CustomCheckBoxCard({
    Key? key,
    required this.title,
    this.isCheck,
    required this.color,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.greyColor,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title.tr,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 11.sp,
                  ),
            ),
            const Spacer(),
            Checkbox(
              value: isCheck,
              onChanged: onChanged,
              checkColor: color,
              side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
                    color: color,
                    width: 1.5,
                  )),
              fillColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

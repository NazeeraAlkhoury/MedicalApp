import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomReviewUserNameText extends StatelessWidget {
  const CustomReviewUserNameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nazeera Alkhouri',
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13.sp),
    );
  }
}

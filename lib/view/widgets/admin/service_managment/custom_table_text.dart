import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableText extends StatelessWidget {
  final String text;
  const CustomTableText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 7.8.sp),
    );
  }
}

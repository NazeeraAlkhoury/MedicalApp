import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomContainerTopBottomSheet extends StatelessWidget {
  const CustomContainerTopBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 30.h),
      height: 5.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: HexColor('#C4C4C4'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserPic extends StatelessWidget {
  final String image;
  const CustomUserPic({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 27.r,
      child: Image.asset(
        image,
        height: 55.h,
        width: 55.w,
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';

class CustomButtomProfile extends StatelessWidget {
  const CustomButtomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 20.h),
      child: Stack(
        children: [
          const CustomPaintAppBottom(),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 100.w,
            ),
            child: SvgPicture.asset(
              AppImageAssets.imageUndrawPersonalInformationRe1,
              height: 130.h,
            ),
          ),
        ],
      ),
    );
  }
}

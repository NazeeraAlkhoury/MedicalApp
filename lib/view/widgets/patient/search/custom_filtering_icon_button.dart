import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/functions/open_search_filtering_dialog.dart';

class CustomFiltiringIconButton extends StatelessWidget {
  const CustomFiltiringIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        openSearchFilteringDialog();
      },
      child: SvgPicture.asset(
        AppIconAssets.iconfilter,
        color: AppColors.primaryColor,
        height: 20.h,
      ),
    );
  }
}

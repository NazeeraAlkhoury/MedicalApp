import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomAdminDrawerButton extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  const CustomAdminDrawerButton({
    Key? key,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SvgPicture.asset(
          AppIconAssets.iconAdminDrawer,
          color: color,
        ));
  }
}

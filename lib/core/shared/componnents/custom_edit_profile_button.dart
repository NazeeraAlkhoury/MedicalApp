import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';

class CustomEditProfileButton extends StatelessWidget {
  final Function()? onTap;
  const CustomEditProfileButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(AppIconAssets.iconBasilEditOutline),
    );
  }
}

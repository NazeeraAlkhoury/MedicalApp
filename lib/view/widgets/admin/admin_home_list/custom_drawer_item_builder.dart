import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/data/model/admin/drawer_model.dart';

class CustomDrawerItemBuilder extends StatelessWidget {
  final DrawerModel model;
  final Function()? onTap;
  const CustomDrawerItemBuilder({
    Key? key,
    required this.model,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(model.icon, color: AppColors.accentColor),
      title: Text(
        model.title.tr,
        style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 12.sp),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/admin/admin_home_list/custom_listview_drawer.dart';
import 'package:medical_app/view/widgets/admin/custom_admin_drawer_button.dart';

class CustomAdminDrawer extends StatelessWidget {
  final dynamic Function()? closeDrawer;
  final Function(int index)? onTap;
  const CustomAdminDrawer({
    this.closeDrawer,
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 35.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w),
                child: CustomAdminDrawerButton(
                  color: AppColors.accentColor,
                  onTap: closeDrawer,
                ),
              ),
              CustomListViewDrawer(
                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

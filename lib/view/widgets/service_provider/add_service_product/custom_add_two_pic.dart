import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/add_service_product_controller.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/functions/open_add_pic_bottomsheet.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomAddTwoPic extends GetView<AddServiceProductControllerImp> {
  const CustomAddTwoPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        openAddPicBottomSheet();
      },
      controller: controller.imageNamesController,
      maxLines: 3,
      readOnly: true,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            overflow: TextOverflow.clip,
          ),
      decoration: InputDecoration(
        suffixIcon: Padding(
          // padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 3.h),
          padding: EdgeInsets.only(
            left: 11.w,
            right: 11.w,
            top: 3.h,
            bottom: 47.h,
          ),
          child: SvgPicture.asset(
            AppIconAssets.iconUploadFile,
            //  height: 5.h,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 8.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        fillColor: AppColors.lightGreyColor,
        filled: true,
        hintText: AppStrings.twoProductPictures.tr,
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: AppColors.greyColor,
              fontSize: 13.sp,
            ),
      ),
    );
  }
}
// Container(
//       height: Get.height * 0.13,
//       decoration: BoxDecoration(
//         color: AppColors.lightGreyColor,
//         borderRadius: BorderRadius.circular(8.r),
//       ),
//       child: TextFormField(
//         onTap: () {
//           openAddPicBottomSheet();
//         },
//         controller: controller.imageNamesController,
//         readOnly: true,
        // style: Theme.of(context).textTheme.bodyText2!.copyWith(
        //       overflow: TextOverflow.clip,
        //     ),
//         decoration: InputDecoration(
//           hintText: AppStrings.twoProductPictures.tr,
//           hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
//                 color: AppColors.greyColor,
//                 fontSize: 13.sp,
//               ),
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: 15.w,
//             vertical: 8.h,
//           ),
//           border: InputBorder.none,
//           suffixIcon: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 3.h),
//             child: SvgPicture.asset(
//               AppIconAssets.iconUploadFile,
//               //  height: 5.h,
//             ),
//           ),
//         ),
//       ),
//     );

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/service_provider_controllers/choose_date_time_controller.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_app_button.dart';

class CustomChooseDateTime extends StatelessWidget {
  const CustomChooseDateTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    Get.put(ChooseDateTimeControllerImp());
    return InkWell(
      onTap: () {
        Get.dialog(
          barrierDismissible: false,
          barrierColor: AppColors.greyColor.withOpacity(0.8),
          Card(
            margin: EdgeInsets.only(
              top: Get.height * 0.18,
              bottom: Get.height * 0.09,
              left: Get.width * 0.05,
              right: Get.width * 0.05,
            ),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CustomChooseDateTime(),
                        const Spacer(),
                        CloseButton(
                          color: AppColors.greyColor,
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.007),
                    CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020, 10, 12),
                      lastDate: DateTime(2025, 10, 12),
                      onDateChanged: (value) {},
                    ),
                    //  SizedBox(height: Get.height * 0.007),
                    Row(
                      children: [
                        Text(
                          AppStrings.time.tr,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 16.56.sp,
                                  ),
                        ),
                        const Spacer(),
                        // Container(
                        //   height: 30.h,
                        //   width: 70.w,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(8.r),
                        //     color: AppColors.lightGreyColor,
                        //   ),
                        //   child: Text(
                        //     '${now.hour}:${now.minute}',
                        //     textAlign: TextAlign.center,
                        // style:
                        //     Theme.of(context).textTheme.subtitle2!.copyWith(
                        //           color: AppColors.blackColor,
                        //           fontSize: 18.sp,
                        //         ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 30.h,
                          width: 70.w,
                          child: TextFormField(
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: AppColors.blackColor,
                                      fontSize: 18.sp,
                                    ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 4.h,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide:
                                    BorderSide(color: AppColors.lightGreyColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide:
                                    BorderSide(color: AppColors.primaryColor),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide:
                                    BorderSide(color: AppColors.lightGreyColor),
                              ),
                              fillColor: AppColors.lightGreyColor,
                              filled: true,
                            ),
                            controller: TextEditingController(
                                text: '${now.hour}:${now.minute}'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    CustomAppButton(
                      text: AppStrings.save,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          SvgPicture.asset(AppIconAssets.iconOclock),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Text(
            AppStrings.chooseDateTime.tr,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 13.sp,
                ),
          ),
        ],
      ),
    );
  }
}

// In flutter 1.20 :

// DateTime now = DateTime.now();

// print(now.hour.toString() + ":" + now.minute.toString() + ":" + now.second.toString());

// To get the current Time in AM/PM format.

// dynamic currentTime = DateFormat.jm().format(DateTime.now());

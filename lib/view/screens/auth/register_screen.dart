import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:medical_app/controller/auth_controllers/register_controller.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/custom_nav_arrow.dart';
import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paint_app_top_auth.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/costumPaintAuth/custom_paient_register_bottom.dart';
import 'package:medical_app/view/widgets/auth/register/custom_continue_text_register.dart';
import 'package:medical_app/view/widgets/auth/register/custom_welcom_text_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterCotrollerImp registerCotroller = Get.put(RegisterCotrollerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const CustomPaintAppTopAuth(),
                    Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.119,
                        ),
                        const CustomWelcomText(),
                        SizedBox(
                          height: Get.height * 0.0006,
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: Get.height * 0.35,
                              ),
                              child: const CustomPaintRegisterBottom(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: Get.height * 0.42,
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    const CustomContinueTextRegister(),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        top: 30.h,
                                        bottom: 27.h,
                                      ),
                                      child: CustomElevatedButton(
                                          text: AppStrings.patient,
                                          onPressed: () {
                                            registerCotroller
                                                .goToPatientInformation();
                                          }),
                                    ),
                                    CustomElevatedButton(
                                      text: AppStrings.serviceProvider,
                                      onPressed: () {
                                        registerCotroller
                                            .goToServiceProviderInformation();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: Get.height * 0.08,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppImageAssets.imageUndrawDoctors,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 10.w,
                        top: 35.h,
                      ),
                      child: const CustomNavArrow(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

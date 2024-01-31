import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/auth_controllers/bottomsheet_controller.dart';

import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/core/shared/componnents/bottomSheet/custom_container_top_bottomsheet.dart';
import 'package:medical_app/view/widgets/auth/bottomSheet/pages/custom_reset_passsword.dart';
import 'package:medical_app/view/widgets/auth/custom_elevated_button.dart';
import 'package:medical_app/view/widgets/auth/bottomSheet/pages/custom_forget_password.dart';

import 'package:medical_app/view/widgets/auth/bottomSheet/pages/verificationCode/custom_verification_code.dart';

class CustomBottomSheetForgetVerifCode extends StatefulWidget {
  const CustomBottomSheetForgetVerifCode({super.key});

  @override
  State<CustomBottomSheetForgetVerifCode> createState() =>
      _CustomBottomSheetForgetVerifCodeState();
}

class _CustomBottomSheetForgetVerifCodeState
    extends State<CustomBottomSheetForgetVerifCode> {
  BottomSheetControllerImp controller = Get.put(BottomSheetControllerImp());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomSheetControllerImp>(builder: (controller) {
      return SizedBox(
        height: controller.currentIndex == 2
            ? Get.height * 0.56
            : Get.height * 0.472,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Center(
                child: CustomContainerTopBottomSheet(),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: controller.currentIndex == 2
                        ? Get.height * 0.39
                        : Get.height * 0.3,
                    child: PageView(
                      controller: controller.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: ((value) {
                        controller.onPageChanged(value);
                      }),
                      children: const [
                        CustomForgetPassword(),
                        CustomVerificationCode(),
                        CustomResetPassword(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 45.w,
                  end: 45.w,
                ),
                child: CustomElevatedButton(
                    font: 18.sp,
                    text: controller.currentIndex == 2
                        ? AppStrings.updatePassword
                        : AppStrings.continu,
                    onPressed: () {
                      controller.next();
                    }),
              ),
            ),
          ],
        ),
      );
    });
  }
}

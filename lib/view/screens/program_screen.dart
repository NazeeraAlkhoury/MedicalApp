import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/controller/program_controller.dart';

import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_app_bottom.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_first_top.dart';
import 'package:medical_app/core/shared/componnents/customPaint/custom_paint_second_top.dart';
import 'package:medical_app/view/widgets/program/custom_button_program.dart';
import 'package:medical_app/view/widgets/program/custom_image_program.dart';
import 'package:medical_app/view/widgets/program/custom_rich_text.dart';
import 'package:medical_app/view/widgets/program/custom_text_program.dart';
import 'package:medical_app/view/widgets/program/custom_translate_button.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProgramControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const CustomPaintSecondTop(),
                    const CustomPaintFirstTop(),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          top: Get.width * 0.65, start: Get.width * 0.38),
                      child: const CustomRichText(),
                    ),
                    SingleChildScrollView(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.width * 0.9),
                            const CustomImageProgram(),
                            Padding(
                              padding: EdgeInsetsDirectional.only(top: 10.h),
                              child: const CustomBodyTextProgram(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: 20.w,
                        top: 55.h,
                      ),
                      child: const Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: CustomTranslateButton()),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppBottom(),
                Positioned(
                  right: 20.w,
                  bottom: 50.h,
                  child: const CustomButtonProgram(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

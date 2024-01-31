import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:medical_app/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validat;
  final void Function(String)? onSubmitted;
  // final void Function()? onComplete;
  final String? suffixIcon;
  final void Function()? suffixFunction;
  final bool? isObscureText;
  final bool? readOnly;
  const CustomTextFormField({
    super.key,
    required this.textController,
    required this.hintText,
    required this.textInputType,
    this.textInputAction,
    this.validat,
    this.suffixIcon,
    this.suffixFunction,
    this.isObscureText = false,
    //this.onComplete,
    this.onSubmitted,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .bodyText2!
          .copyWith(color: AppColors.greyColor),
      //  getRegularTextStylePoppins(
      //     fontsize: 15.sp, color: AppColors.greyColor),
      controller: textController,
      keyboardType: textInputType,
      validator: validat,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText.tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: AppColors.greyColor,
              fontSize: 14.sp,
            ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: HexColor('#CBCBCB')),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: HexColor('#CBCBCB')),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: AppColors.redColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(
            color: AppColors.redColor,
          ),
        ),
        errorStyle: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: AppColors.redColor),
        fillColor: AppColors.whiteColor,
        filled: true,
        suffixIcon: suffixIcon != null
            ? InkWell(
                onTap: suffixFunction,
                child: Padding(
                  padding: EdgeInsets.all(12.h),
                  child: SvgPicture.asset(
                    suffixIcon!,
                    color: AppColors.primaryColor,
                  ),
                ))
            : null,
      ),
      obscureText: isObscureText!,
      onFieldSubmitted: onSubmitted,
      readOnly: readOnly!,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';

class CustomTextField extends StatelessWidget {
  final bool enabled;
  final TextEditingController? controller;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final Color? borderSideColor;
  final bool isNotVisible;
  final bool? filled;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final double borderRadius;
  final FocusNode? focusNode;
  final TextAlignVertical? textAlignVertica;

  const CustomTextField({
    super.key,
    this.enabled = true,
    this.isNotVisible = false,
    this.controller,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.fillColor,
    this.filled,
    this.borderRadius = 8,
    this.borderSideColor,
    this.maxLines,
    this.minLines,
    this.textAlignVertica, this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius.r),
      borderSide: BorderSide(
        color: borderSideColor ?? AppColors.primaryColor,
        width: 1.w,
      ),
    );
    InputBorder focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius.r),
      borderSide: BorderSide(
        color: borderSideColor ?? AppColors.primaryColor,
        width: 1.w,
      ),
    );
    InputBorder errorBorderColor = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius.r),
      borderSide: BorderSide(
        color: AppColors.redColor,
        width: 1.w,
      ),
    );
    return TextFormField(
      controller: controller,
      obscureText: isNotVisible,
      obscuringCharacter: "*",
      focusNode: focusNode,
      maxLines: maxLines,
      minLines: minLines,
      textAlignVertical: textAlignVertica,
      style: textStyle??CustomThemes.greyColor49ColorTextTheme(context)
          .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        border: border,
        focusedBorder: focusedBorder,
        enabledBorder: border,
        disabledBorder: border,
        suffixIconColor: MaterialStateColor.resolveWith(
          (states) => states.contains(MaterialState.focused)
              ? AppColors.primaryColor
              : AppColors.greyColorC6,
        ),
        errorBorder: errorBorderColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        filled: filled,
        hintText: hintText,
        hintStyle: CustomThemes.greyColor92ColorTextTheme(context)
            .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
        enabled: enabled,
      ),
    );
  }
}

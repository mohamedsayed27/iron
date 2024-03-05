import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? elevation;
  final double? borderRadiusValue;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;
  final Widget? child;
  final String? text;
  final TextStyle? titleStyle;
  final Size? maximumSize;
  const CustomElevatedButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.child,
    this.text,
    this.borderRadiusValue = 8,
    this.titleStyle,
    this.elevation,
    this.padding, this.borderRadius, this.maximumSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          disabledBackgroundColor: AppColors.greyColorC6,
          backgroundColor: backgroundColor,
          elevation: elevation,
          maximumSize: maximumSize,
          padding: padding,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(borderRadiusValue!.r),
          ),
        ),
        child: child ??
            Text(
              text!,
              style: titleStyle ?? CustomThemes.whiteColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
      ),
    );
  }
}

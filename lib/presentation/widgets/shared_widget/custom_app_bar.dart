import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/app_theme/custom_themes.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double? elevation;
  final double? fontSize;
  final bool centerTitle;
  final Color backgroundColor;
  final FontWeight? fontWeight;

  const CustomAppBar({
    super.key,
    required this.title,
    this.elevation,
    this.centerTitle = false,
    this.fontSize,
    this.fontWeight, this.backgroundColor = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation??0,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
          fontSize: fontSize?.sp ?? 18.sp,
          fontWeight: fontWeight ?? FontWeight.w600,
        ),
      ),
    );
  }
}

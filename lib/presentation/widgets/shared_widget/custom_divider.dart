
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  final double? height;

  const CustomDivider({super.key, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h ?? 1.5.h,
      color: color ?? AppColors.dividerColor,
      width: double.infinity,
    );
  }
}
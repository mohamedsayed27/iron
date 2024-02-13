import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_theme/app_colors.dart';
import '../shared_widget/custom_outlined_button.dart';

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final void Function()? onPressed;
  const SocialLoginButton({super.key, required this.imagePath, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      borderColor: AppColors.primaryColor,
      borderRadius: 8,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      foregroundColor: AppColors.primaryColor,
      backgroundColor: AppColors.whiteColor,
      height: 42,
      width: 70,
      child: SvgPicture.asset(
        imagePath,
        height: 32.h,
        width: 32.w,
      ),
    );
  }
}
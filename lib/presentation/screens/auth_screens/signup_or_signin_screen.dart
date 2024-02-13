import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class SignUpOrSignInScreen extends StatelessWidget {
  const SignUpOrSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              SvgPath.blueLogo,
              width: 158.w,
              height: 74.h,
            ),
            const CustomSizedBox(
              height: 56,
            ),
            CustomElevatedButton(
              borderRadiusValue: 12,
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.whiteColor,
              onPressed: () {},
              width: double.infinity,
              elevation: 0,
              text: "Sign In",
              padding: EdgeInsets.symmetric(vertical: 14.h),
            ),
            const CustomSizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              borderRadiusValue: 12,
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.whiteColor,
              onPressed: () {},
              width: double.infinity,
              elevation: 0,
              text: "Sign Up",
              padding: EdgeInsets.symmetric(vertical: 14.h),
            )
          ],
        ),
      ).symmetricPadding(horizontal: 20),
    );
  }
}

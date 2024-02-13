import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';

import '../../widgets/shared_widget/custom_sized_box.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 487.h,
            width: double.infinity,
            child: Image.asset(
              ImagesPath.welcomeScreenImage,
              fit: BoxFit.fill,
            ),
          ),
          const CustomSizedBox(
            height: 56,
          ),
          Text(
            "Welcome to Iron Market",
            textAlign: TextAlign.center,
            style: CustomThemes.primaryColorTextTheme(context).copyWith(
              fontSize: 24.sp,
              height: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CustomSizedBox(
            height: 8,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit tristique pretium gravida felis ",
            textAlign: TextAlign.center,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              height: 1,
              fontWeight: FontWeight.w500,
            ),
          ).symmetricPadding(horizontal: 20),
          const CustomSizedBox(
            height: 48,
          ),
          CustomElevatedButton(
            borderRadiusValue: 12,
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            onPressed: () {
              Navigator.pushReplacementNamed(context, ScreenName.onboardingScreen);
            },
            elevation: 0,
            text: "Get Started",
            padding: EdgeInsets.symmetric(vertical: 14.h),
          ).symmetricPadding(horizontal: 20)
        ],
      ),
    );
  }
}

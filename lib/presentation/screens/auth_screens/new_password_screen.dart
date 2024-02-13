import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/auth_widgets/password_form_field.dart';
import '../../widgets/auth_widgets/phone_number_text_field.dart';
import '../../widgets/auth_widgets/pin_field_builder.dart';
import '../../widgets/auth_widgets/social_buttons_widget.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "New Password",
                textAlign: TextAlign.center,
                style: CustomThemes.primaryColorTextTheme(context).copyWith(
                  fontSize: 32.sp,
                  height: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const CustomSizedBox(
              height: 36,
            ),
            const PasswordFormField(
              hintText: "New Password",
            ),
            const CustomSizedBox(
              height: 8,
            ),
            Text(
              "Must be at least 8 characters",
              textAlign: TextAlign.center,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const PasswordFormField(
              hintText: "Confirm Password",
            ),
            const CustomSizedBox(
              height: 8,
            ),
            Text(
              "Must be at least 8 characters",
              textAlign: TextAlign.center,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
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
              text: "Reset Password",
              padding: EdgeInsets.symmetric(vertical: 14.h),
            ),
            const CustomSizedBox(
              height: 20,
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/auth_widgets/password_form_field.dart';
import '../../widgets/auth_widgets/phone_number_text_field.dart';
import '../../widgets/auth_widgets/social_buttons_widget.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';
import '../../widgets/shared_widget/custom_text_form_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSizedBox(
              height: 20,
            ),
            Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: CustomThemes.primaryColorTextTheme(context).copyWith(
                fontSize: 32.sp,
                height: 1,
                fontWeight: FontWeight.w500,
              ),
            ),
            const CustomSizedBox(
              height: 36,
            ),
            const CustomTextField(
              hintText: "First name",
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "Last name",
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const PhoneNumberFormField(),
            const CustomSizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "Email",
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const PasswordFormField(
              hintText: "Password",
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
            ),
            const CustomSizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.h,
                    color: AppColors.primaryColor,
                  ),
                ),
                const CustomSizedBox(
                  width: 20,
                ),
                Text(
                  "Or Sign up with",
                  style:
                      CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const CustomSizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 1.h,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const SocialButtonsWidget(),
            const CustomSizedBox(
              height: 36,
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8.r),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an account! ",
                    style: CustomThemes.greyColor67ColorTextTheme(context)
                        .copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Sign In",
                    style: CustomThemes.darkColor19TextTheme(context).copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const CustomSizedBox(
              height: 70,
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}

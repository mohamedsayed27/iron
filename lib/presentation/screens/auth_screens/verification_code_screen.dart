import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_router/screens_name.dart';
import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/auth_widgets/password_form_field.dart';
import '../../widgets/auth_widgets/phone_number_text_field.dart';
import '../../widgets/auth_widgets/pin_field_builder.dart';
import '../../widgets/auth_widgets/social_buttons_widget.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
              "Verif ication Code",
              textAlign: TextAlign.center,
              style: CustomThemes.primaryColorTextTheme(context).copyWith(
                fontSize: 32.sp,
                height: 1,
                fontWeight: FontWeight.w500,
              ),
            ),
            const CustomSizedBox(
              height: 31,
            ),
            Text(
              "We sent you the 4 digit code to ******86 Enter the code below to conf irm your phone number",
              textAlign: TextAlign.start,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            const CustomSizedBox(
              height: 20,
            ),
            const PinFieldBuilder(),
            const CustomSizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              borderRadiusValue: 12,
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.whiteColor,
              onPressed: () {
                Navigator.pushNamed(context, ScreenName.mainLayoutScreen);
              },
              width: double.infinity,
              elevation: 0,
              text: "Verify",
              padding: EdgeInsets.symmetric(vertical: 14.h),
            ),
            const CustomSizedBox(
              height: 36,
            ),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(8.r),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("If you didn\’t receive a code. ",style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                  Text("Resend",style: CustomThemes.darkColor19TextTheme(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/presentation/widgets/profile_background_widget/profile_background_widget.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widget/custom_app_bar.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColorED,
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          backgroundColor: AppColors.greyColorED,
          title: "Account info",
        ),
      ),
      body: ProfileBackgroundBody(
        isEditProfile: true,
        children: [
          const CustomSizedBox(
            height: 24,
          ),
          const CustomTextField(hintText: "Email",filled: true,fillColor: AppColors.greyColorF6,borderSideColor: AppColors.greyColorDF,borderRadius: 18,),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: "First Name",filled: true,fillColor: AppColors.greyColorF6,borderSideColor: AppColors.greyColorDF,borderRadius: 18,),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: "Last Name",filled: true,fillColor: AppColors.greyColorF6,borderSideColor: AppColors.greyColorDF,borderRadius: 18,),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: "Password",filled: true,fillColor: AppColors.greyColorF6,borderSideColor: AppColors.greyColorDF,borderRadius: 18,),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: "Phone",filled: true,fillColor: AppColors.greyColorF6,borderSideColor: AppColors.greyColorDF,borderRadius: 18,),
          const CustomSizedBox(
            height: 24,
          ),
          CustomElevatedButton(
            text: "Delete Account",
            onPressed: () {},
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
        ],
      ),
    );
  }
}

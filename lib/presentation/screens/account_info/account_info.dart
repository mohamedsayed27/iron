import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/enums/account_type_enum.dart';
import '../../widgets/home_screen_widgets/rollet_weel_dialog.dart';
import '../../widgets/profile_background_widget/profile_background_widget.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({
    super.key,
  });

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  AccountType? accountType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColorED,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.greyColorED,
        title: Text(
          "Account info",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ProfileBackgroundBody(
        isEditProfile: true,
        children: [
          const CustomSizedBox(height: 30,),
          CustomTextField(
            hintText: "Email",
            borderSideColor: AppColors.greyColorDF,
            controller: TextEditingController(text: "info@gmail.com"),
            fillColor: AppColors.greyColorF6,
            filled: true,
            textStyle: CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 16,),
          CustomTextField(
            hintText: "First Name",
            borderSideColor: AppColors.greyColorDF,
            controller: TextEditingController(text: "Ahmed"),
            fillColor: AppColors.greyColorF6,
            filled: true,
            textStyle: CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 16,),
          CustomTextField(
            hintText: "Second Name",
            borderSideColor: AppColors.greyColorDF,
            controller: TextEditingController(text: "Khaled"),
            fillColor: AppColors.greyColorF6,
            filled: true,
            textStyle: CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 16,),
          CustomTextField(
            hintText: "Password",
            isNotVisible: true,
            borderSideColor: AppColors.greyColorDF,
            controller: TextEditingController(text: "Khaled"),
            fillColor: AppColors.greyColorF6,
            filled: true,
            maxLines: 1,
            textStyle: CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 16,),
          CustomTextField(
            hintText: "Phone",
            borderSideColor: AppColors.greyColorDF,
            controller: TextEditingController(text: "+96612348620"),
            fillColor: AppColors.greyColorF6,
            filled: true,
            textStyle: CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 12,),
          Text(
            "Gender (Optional)",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSizedBox(height: 8,),
          Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    accountType = AccountType.groups;
                  });
                },
                child: Row(
                  children: [
                    SizedBox(height: 21.h,width: 21.w,
                      child: Radio(
                        value: AccountType.groups,
                        groupValue: accountType,
                        onChanged: (value) {
                          setState(() {
                            accountType = value;
                          });
                        },

                      ),
                    ),
                    const CustomSizedBox(width: 8,),
                    Text(
                      "For Groups",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const CustomSizedBox(width: 24,),
              InkWell(

                onTap: (){
                  setState(() {
                    accountType = AccountType.individuals;
                  });
                },
                child: Row(
                  children: [
                    SizedBox(height: 21.h,width: 21.w,
                      child: Radio(
                        value: AccountType.individuals,
                        groupValue: accountType,
                        onChanged: (value) {
                          setState(() {
                            accountType = value;
                          });
                        },

                      ),
                    ),
                    const CustomSizedBox(width: 8,),
                    Text(
                      "For Individuals",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const CustomSizedBox(
            height: 48,
          ),
          CustomElevatedButton(
            text: "Delete Account",
            onPressed: () {
            },
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

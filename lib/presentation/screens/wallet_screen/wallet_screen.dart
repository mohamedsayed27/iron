import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/fonts_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widget/custom_app_bar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "Wallet",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Text(
            "Your Wallet",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(height: 16,),
          Container(
            padding: EdgeInsets.all(24.sp),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 7.r,
                    color: AppColors.shadowColor(value: 0.1),
                  )
                ]),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Iron Cash",
                        style: CustomThemes.greyColor67ColorTextTheme(context)
                            .copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "50.00 SAR",
                        style: CustomThemes.greyColor49ColorTextTheme(context)
                            .copyWith(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomOutlinedButton(
                  borderColor: AppColors.primaryColor,
                  onPressed: () {},
                  foregroundColor: AppColors.primaryColor,
                  borderRadius: 48,
                  text: "Add Cash",
                  style: CustomThemes.primaryColorTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const CustomSizedBox(height: 16,),
          Text(
            "Payment methods",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saved Cards",
                style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              CustomElevatedButton(
                borderRadius: BorderRadius.circular(12.r),
                onPressed: () {},
                backgroundColor: AppColors.primaryColor,
                text: "Add",
              )
            ],
          ),
          const CustomSizedBox(height: 16,),
          const CardContainer(),
          const CustomSizedBox(height: 16,),
          const CardContainer(),
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: const LinearGradient(
          begin: AlignmentDirectional.centerStart,
          end: AlignmentDirectional.centerEnd,
          colors: [
            AppColors.gradientColorContainer1,
            AppColors.gradientColorContainer2,
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    SvgPath.chip,
                    width: 42.w,
                    height: 32.h,
                  ),
                  const CustomSizedBox(width: 16,),
                  SvgPicture.asset(
                    SvgPath.wifi,
                    width: 17.w,
                    height: 22.h,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.trash,
                  size: 26.sp,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          const CustomSizedBox(height: 16,),
          Text(
            "5000    *****     *****     *****",
            style: CustomThemes.whiteColorTextTheme(context).copyWith(
                fontSize: 20.sp,
                fontFamily: FontsPath.belly,
                fontWeight: FontWeight.w400),
          ),
          const CustomSizedBox(height: 16,),
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              SvgPath.masterCard,
              width: 50.w,
              height: 30.h,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';

class BottomNavBarIcon extends StatelessWidget {
  final String label;
  final String iconPath;
  final void Function() onTap;
  final double? iconWidth;
  final bool isSelected;
  final double? iconHeight;

  const BottomNavBarIcon({
    Key? key,
    required this.label,
    required this.iconPath,
    required this.onTap,
    this.iconWidth,
    this.iconHeight,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        side: const BorderSide(color: Colors.transparent),
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.whiteColor,
        shape: const CircleBorder(),
      ),
      onPressed: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            colorFilter: isSelected?const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn):const ColorFilter.mode(AppColors.greyColor67, BlendMode.srcIn),
            width: 22.w,
            height: 22.h,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            label,
            style: isSelected
                ? CustomThemes.primaryColorTextTheme(context)
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500)
                : CustomThemes.greyColor67ColorTextTheme(context)
                    .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

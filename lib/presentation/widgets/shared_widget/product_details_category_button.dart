import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';
import 'custom_outlined_button.dart';

class CategoryButton extends StatelessWidget {
  final bool isSelected;
  final String title;
  final void Function()? onPressed;

  const CategoryButton({
    super.key,
    required this.isSelected,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      borderColor: isSelected ? AppColors.primaryColor : AppColors.greyColorF6,
      borderRadius: 8,
      backgroundColor:
      isSelected ? AppColors.lightBabyBlueColor : AppColors.greyColorF6,
      text: title,
      style: CustomThemes.greyColor34ColorTextTheme(context).copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
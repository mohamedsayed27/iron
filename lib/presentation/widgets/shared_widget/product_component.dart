import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              height: 110.h,
              width: 101.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: AppColors.lightBabyBlueColor,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Image.asset(
                ImagesPath.productDummyImage,
                fit: BoxFit.contain,
              ),
            ),
            PositionedDirectional(
              end: -2.w,
              bottom: -1.h,
              child: SizedBox(
                height: 26.h,
                width: 26.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: BorderSide(color: AppColors.whiteColor, width: 2.w),
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.yellowColor,
                    foregroundColor: AppColors.whiteColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(SvgPath.plus,colorFilter: const ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),height: 20.h,width: 20.w,),
                  ),
                ),
              ),
            ),
          ],
        ),
        const CustomSizedBox(
          height: 8,
        ),
        Text(
          "Product Name",
          style: CustomThemes.darkColor12TextTheme(context).copyWith(
              fontSize: 14.sp, fontWeight: FontWeight.w600, height: 1.1.h),
        ),
        const CustomSizedBox(
          height: 2,
        ),
        Text(
          "450 SAR",
          style: CustomThemes.primaryColorTextTheme(context).copyWith(
              fontSize: 14.sp, fontWeight: FontWeight.w600, height: 1.1.h),
        ),
        const CustomSizedBox(
          height: 2,
        ),
        Text(
          "Subscribers Price",
          style: CustomThemes.darkColor12TextTheme(context).copyWith(
              fontSize: 12.sp, fontWeight: FontWeight.w600, height: 1.1.h),
        ),
        const CustomSizedBox(
          height: 2,
        ),
        Text(
          "350 SAR",
          style: CustomThemes.greyColor92ColorTextTheme(context).copyWith(
              fontSize: 12.sp, fontWeight: FontWeight.w600, height: 1.1.h),
        ),
      ],
    );
  }
}
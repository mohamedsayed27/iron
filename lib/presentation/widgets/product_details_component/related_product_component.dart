import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/assets_path/images_path.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../../widgets/shared_widget/product_component.dart';

class RelatedProduct extends StatelessWidget {
  const RelatedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImagesPath.starIcon,
              width: 20.w,
              height: 20.h,
            ),
            const CustomSizedBox(
              width: 4,
            ),
            Text(
              "Related Products",
              style: CustomThemes.darkColor19TextTheme(context).copyWith(
                fontFamily: FontsPath.belly,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const CustomSizedBox(
          height: 16,
        ),
        SizedBox(
          height: 185.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => const ProductComponent(),
            separatorBuilder: (_, index) => const CustomSizedBox(
              width: 14,
            ),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
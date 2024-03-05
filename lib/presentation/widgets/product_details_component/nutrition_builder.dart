import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/assets_path/svg_path.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../screens/products_screen/product_details_screen.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/component_title_header_widget.dart';
import '../shared_widget/custom_divider.dart';


class NutritionComponent extends StatelessWidget {
  const NutritionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ComponentHeaderTitleWidget(
          title: "Nutrition",
          imagePath: SvgPath.nutrition,
        ),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Protien", percent: 73),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Carbs", percent: 20),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Fat", percent: 10),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Protien", percent: 73),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Carbs", percent: 20),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Fat", percent: 10),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
      ],
    );
  }
}



class RatingWidget extends StatelessWidget {
  final String title;
  final double percent;

  const RatingWidget({super.key, required this.title, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.1.h,
            ),
          ),
        ),
        const CustomSizedBox(
          width: 8,
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 5.h,
            decoration: BoxDecoration(
              color: AppColors.greyColorC6,
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: AlignmentDirectional.centerStart,
            child: FractionallySizedBox(
              widthFactor: percent / 100,
              heightFactor: 1,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 1.h),
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "${percent.round()} g",
            textAlign: TextAlign.end,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.1.h,
            ),
          ),
        ),
      ],
    );
  }
}
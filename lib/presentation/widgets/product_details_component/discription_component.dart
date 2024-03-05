import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/product_details_component/flavors_categories_component.dart';
import '../../widgets/product_details_component/nutrition_builder.dart';
import '../../widgets/product_details_component/recommendation_component.dart';
import '../../widgets/product_details_component/related_product_component.dart';
import '../../widgets/product_details_component/reviews_component_builder.dart';
import '../../widgets/product_details_component/shapes_component.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/component_title_header_widget.dart';


class DescriptionComponent extends StatelessWidget {
  const DescriptionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeaderTitleWidget(
          imagePath: SvgPath.description,
          title: "Description",
        ),
        const CustomSizedBox(
          height: 8,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit tristiqueasdwfa. pretium gravida felis, sociis in felis.Diam habitant natoque libero, sit et duis ",
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.1.h,
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/screens/products_screen/products_screen.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/product_details_component/flavors_categories_component.dart';
import '../../widgets/product_details_component/recommendation_component.dart';
import '../../widgets/product_details_component/shapes_component.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../../widgets/shared_widget/product_component.dart';


class ComponentHeaderTitleWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const ComponentHeaderTitleWidget(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imagePath,
          width: 25.w,
          height: 25.h,
        ),
        const CustomSizedBox(
          width: 8,
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.darkColor12TextTheme(context).copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            height: 1.1.h,
          ),
        )
      ],
    );
  }
}
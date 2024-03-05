
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/assets_path/svg_path.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/component_title_header_widget.dart';

class ExpirationDateWidget extends StatelessWidget {
  const ExpirationDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeaderTitleWidget(
          imagePath: SvgPath.expiration,
          title: "Expiration",
        ),
        const CustomSizedBox(
          height: 8,
        ),
        Text(
          "Exp Date: 13/03/2026",
          maxLines: 1,
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
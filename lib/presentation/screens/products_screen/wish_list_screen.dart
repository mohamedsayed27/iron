import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/screens/products_screen/products_screen.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widget/custom_app_bar.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "Wish list",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSizedBox(
            height: 24,
          ),
          Text(
            "Your wish list",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ).onlyDirectionalPadding(start: 16),
          CustomSizedBox(
            height: 16,
          ),
          Expanded(
            child: ProductsGridComponent(
              isFavorite: true,
            ),
          ),
          CustomSizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

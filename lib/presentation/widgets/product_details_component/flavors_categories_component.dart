import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../screens/products_screen/product_details_screen.dart';
import '../shared_widget/product_details_category_button.dart';


class FlavorsCategoryComponent extends StatefulWidget {
  const FlavorsCategoryComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FlavorsCategoryComponentState();
  }
}

class _FlavorsCategoryComponentState extends State<FlavorsCategoryComponent> {
  final List<String> list = [
    "Berry Jam",
    "chocolate",
    "chocolate",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => CategoryButton(
          isSelected: currentIndex == index,
          title: list[index],
          onPressed: () {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        separatorBuilder: (_, index) => const CustomSizedBox(
          width: 11,
        ),
        itemCount: list.length,
      ),
    );
  }
}
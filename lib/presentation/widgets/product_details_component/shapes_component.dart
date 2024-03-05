import 'package:flutter/material.dart';

import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/product_details_category_button.dart';



class ShapesCategoryComponent extends StatefulWidget {
  const ShapesCategoryComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ShapesCategoryComponentState();
  }
}

class _ShapesCategoryComponentState extends State<ShapesCategoryComponent> {
  final List<String> list = [
    "Large",
    "Medium",
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
          width: 16,
        ),
        itemCount: list.length,
      ),
    );
  }
}
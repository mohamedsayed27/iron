import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_router/screens_name.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/assets_path/svg_path.dart';
import 'bottom_nav_bar_icon.dart';

class BottomNavBarWidget extends StatefulWidget {
  final void Function(int index) changeCurrentIndex;
  final int index;

  const BottomNavBarWidget({
    super.key,
    required this.changeCurrentIndex,
    required this.index,
  });

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late int currentIndex;

  @override
  Widget build(BuildContext context) {
    currentIndex = widget.index;
    return Container(
      padding: EdgeInsets.only(
        top: 16.h,
        bottom: 24.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -3.h),
            blurRadius: 16.r,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavBarIcon(
            label: "Home",
            iconPath: SvgPath.home,
            onTap: () {
              widget.changeCurrentIndex(0);
            },
            isSelected: currentIndex == 0,
          ),
          BottomNavBarIcon(
            label: "Deals",
            iconPath: SvgPath.fire,
            onTap: () {
              widget.changeCurrentIndex(1);
            },
            isSelected: currentIndex == 1,
          ),
          BottomNavBarIcon(
            label: "Discount",
            iconPath: SvgPath.percentage,
            onTap: () {
              widget.changeCurrentIndex(2);
            },
            isSelected: currentIndex == 2,
          ),
          BottomNavBarIcon(
            label: "New",
            iconPath: SvgPath.newIcon,
            onTap: () {
              widget.changeCurrentIndex(3);
            },
            isSelected: currentIndex == 3,
          ),
          BottomNavBarIcon(
            label: "Cart",
            iconPath: SvgPath.cart,
            onTap: () {
              widget.changeCurrentIndex(4);
            },
            isSelected: currentIndex == 4,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.profileScreen);
            },
            style: IconButton.styleFrom(padding: EdgeInsets.zero),
            icon: Container(
              height: 40.h,
              width: 40.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                ImagesPath.profileImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

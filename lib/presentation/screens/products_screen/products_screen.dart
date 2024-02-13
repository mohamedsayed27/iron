import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({
    super.key,
  });

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: tabsTitles.length,
      vsync: this,
    );
    super.initState();
  }

  List<String> tabsTitles = [
    "Fruits",
    "Vegetables",
    "Pantry",
    "Organic shop",
    "Fruits",
    "Vegetables",
    "Pantry",
    "Organic shop",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Products",
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: DefaultTabController(
        length: tabsTitles.length,
        child: Column(
          children: [
            const CustomSizedBox(height: 32,),
            TabBarWidget(
              tabController: _tabController,
              tabsList: tabsTitles,
            ),
            const CustomSizedBox(height: 16,),
            const SubCategoriesTabBar(),
            const CustomSizedBox(height: 16,),
            const Expanded(child: ProductsGridComponent(),),
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  final TabController tabController;
  final List<String> tabsList;

  const TabBarWidget({
    super.key,
    required this.tabController,
    required this.tabsList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightYellowColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.symmetric(horizontal: 4.w),
        isScrollable: true,
        dividerColor: Colors.transparent,
        labelStyle: CustomThemes.whiteColorTextTheme(context).copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle:
            CustomThemes.darkColor12TextTheme(context).copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        labelColor: AppColors.whiteColor,
        unselectedLabelColor: AppColors.darkColo12r,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.primaryColor,
        ),
        tabs: tabsList
            .map((e) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Tab(
                    text: e,
                  ),
                ))
            .toList(),
        controller: tabController,
      ),
    );
  }
}

class SubCategoriesTabBar extends StatefulWidget {
  const SubCategoriesTabBar({super.key});

  @override
  State<SubCategoriesTabBar> createState() => _SubCategoriesTabBarState();
}

class _SubCategoriesTabBarState extends State<SubCategoriesTabBar> {
  List<String> items = [
    "All",
    "Option1",
    "Option2",
    "Option3",
    "Option4",
    "Option5",
    "Option6",
    "Option7",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemBuilder: (_, index) => CustomElevatedButton(
          borderRadiusValue: 12,
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 4.h),
          text: items[index],
          backgroundColor: currentIndex == index
              ? AppColors.primaryColor
              : AppColors.lightBabyBlueColor,
          onPressed: () {
            if (currentIndex != index) {
              currentIndex = index;
              setState(() {});
            }
          },
          titleStyle: currentIndex == index
              ? CustomThemes.whiteColorTextTheme(context)
                  .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600)
              : CustomThemes.darkColor12TextTheme(context)
                  .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600),
        ),
        separatorBuilder: (_, index) => const CustomSizedBox(
          width: 16,
        ),
        itemCount: items.length,
      ),
    );
  }
}

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

class ProductsGridComponent extends StatelessWidget {
  const ProductsGridComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 103.w / 190.h,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 14.w,
      ),
      itemBuilder: (_, index) {
        return const ProductComponent();
      },
      itemCount: 15,
    );
  }
}

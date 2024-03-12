import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/fonts_path.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_outlined_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/home_screen_widgets/rollet_weel_dialog.dart';
import '../story_view_screen/story_view_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AddressDropDown().symmetricPadding(horizontal: 20),
              CustomTextField(
                hintText: "Search for your favorite products",
                borderRadius: 10,
                borderSideColor: AppColors.greyColorC6,
                prefixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.search,
                    color: AppColors.searchIconColor,
                  ),
                ),
                suffixIcon: CustomElevatedButton(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(10.r),
                    topEnd: Radius.circular(10.r),
                  ),
                  text: "Search",
                  onPressed: () {},
                  backgroundColor: AppColors.primaryColor,
                  padding: EdgeInsets.zero,
                  height: 42,
                  width: 72,
                ),
              ).symmetricPadding(horizontal: 20),
              const CustomSizedBox(
                height: 12,
              ),
              CustomSizedBox(
                height: 179,
                width: double.infinity,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 179.h,
                            width: 129,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(10.r),
                                  topStart: Radius.circular(10.r),
                                )),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 179.h,
                            decoration: BoxDecoration(
                              color: AppColors.randomColor,
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(10.r),
                                topEnd: Radius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    PositionedDirectional(
                      start: 15.w,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        height: 136.h,
                        width: 136.w,
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: const BoxDecoration(
                          color: AppColors.yellowColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      start: 15.w,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        ImagesPath.food,
                        height: 130.h,
                        width: 170.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    PositionedDirectional(
                      top: 22.h,
                      end: -12.w,
                      child: Image.asset(
                        ImagesPath.sideImage1,
                        height: 52.h,
                        width: 52.w,
                      ),
                    ),
                    PositionedDirectional(
                      top: 32.h,
                      end: 10.w,
                      child: SvgPicture.asset(
                        SvgPath.freshGroceriesText,
                        height: 115.h,
                        width: 152.w,
                      ),
                    ),
                  ],
                ),
              ).symmetricPadding(horizontal: 20),
              const CustomSizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.sp,
                  vertical: 16.h,
                ),
                color: AppColors.lightYellowColor.withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(SvgPath.homeLocation,width: 46.w,height: 56.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Track Your Order",
                          style:
                          CustomThemes.darkColor19TextTheme(context)
                              .copyWith(
                            fontFamily: FontsPath.belly,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Estimated arrival 12:00",
                          style:
                          CustomThemes.darkColor19TextTheme(context)
                              .copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const CustomSizedBox(
                height: 16,
              ),
              const StoryItemComponent(),
              const CustomSizedBox(
                height: 8,
              ),
              CustomSizedBox(
                height: 175,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                        color: AppColors.lightYellowColor,
                      ),
                    ),
                    PositionedDirectional(
                      end: 0,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        ImagesPath.subscribeNowImage,
                        height: 205.h,
                        width: 205.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    PositionedDirectional(
                        start: 15.w,
                        top: 0,
                        bottom: 0,
                        child: Column(
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
                                  "Subscribe Now",
                                  style:
                                      CustomThemes.darkColor19TextTheme(context)
                                          .copyWith(
                                    fontFamily: FontsPath.belly,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            const CustomSizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 145.w,
                              child: Text(
                                "and get discounts on all products",
                                maxLines: 2,
                                style:
                                    CustomThemes.primaryColorTextTheme(context)
                                        .copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const CustomSizedBox(
                              height: 8,
                            ),
                            CustomOutlinedButton(
                              borderColor: AppColors.primaryColor,
                              width: 156,
                              borderRadius: 12,
                              onPressed: () {},
                              foregroundColor: AppColors.primaryColor,
                              backgroundColor: Colors.transparent,
                              text: "Subscribe",
                              height: 30,
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ).symmetricPadding(vertical: 20)),
                  ],
                ),
              ),
              const CustomSizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      ImagesPath.freshVegetables,
                      height: 112.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const CustomSizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => FortuneWheelDialog(),
                        );
                      },
                      child: Image.asset(
                        ImagesPath.spin,
                        height: 112.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ).symmetricPadding(horizontal: 20),
              const CustomSizedBox(
                height: 19,
              ),
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
                    "Categories",
                    style: CustomThemes.darkColor19TextTheme(context).copyWith(
                      fontFamily: FontsPath.belly,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ).onlyDirectionalPadding(start: 20),
              const CustomSizedBox(
                height: 15,
              ),
              const CategoriesGridWidget(),
              const CustomSizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryItemComponent extends StatelessWidget {
  const StoryItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 53.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => StoryViewScreen()));
                },
                child: Container(
                  height: 53.h,
                  width: 53.w,
                  padding: EdgeInsets.all(2.r),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.yellowColor,
                      width: 2.w,
                    ),
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      ImagesPath.welcomeScreenImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (_, index) => const CustomSizedBox(
                width: 12,
              ),
              itemCount: 10,
            ),
          ),
        ),
        const CustomSizedBox(
          width: 12,
        ),
        Container(
          height: 53.h,
          width: 53.w,
          decoration: const BoxDecoration(
              color: AppColors.lightYellowColor, shape: BoxShape.circle),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            SvgPath.plusStory,
            height: 12.h,
            width: 12.w,
          ),
        )
      ],
    ).symmetricPadding(horizontal: 20);
  }
}

class CategoriesGridWidget extends StatefulWidget {
  const CategoriesGridWidget({super.key});

  @override
  State<CategoriesGridWidget> createState() => _CategoriesGridWidgetState();
}

class _CategoriesGridWidgetState extends State<CategoriesGridWidget> {
  List<Map<String, dynamic>> dummyCategoriesImages = [
    {
      "image": ImagesPath.dummyCategory1,
      "title": "Fruits",
    },
    {
      "image": ImagesPath.dummyCategory2,
      "title": "Vegetables",
    },
    {
      "image": ImagesPath.dummyCategory3,
      "title": "Pantry",
    },
    {
      "image": ImagesPath.dummyCategory1,
      "title": "Fruits",
    },
    {
      "image": ImagesPath.dummyCategory2,
      "title": "Vegetables",
    },
    {
      "image": ImagesPath.dummyCategory3,
      "title": "Pantry",
    },
    {
      "image": ImagesPath.dummyCategory1,
      "title": "Fruits",
    },
    {
      "image": ImagesPath.dummyCategory2,
      "title": "Vegetables",
    },
    {
      "image": ImagesPath.dummyCategory3,
      "title": "Pantry",
    },
    {
      "image": ImagesPath.dummyCategory1,
      "title": "Fruits",
    },
    {
      "image": ImagesPath.dummyCategory2,
      "title": "Vegetables",
    },
    {
      "image": ImagesPath.dummyCategory3,
      "title": "Pantry",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 101.w / 110.h,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w,
      ),
      itemCount: dummyCategoriesImages.length,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, ScreenName.productsScreen);
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 8.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lightBabyBlueColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  dummyCategoriesImages[index]["title"],
                  style: CustomThemes.darkColor12TextTheme(context).copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Image.asset(
                    dummyCategoriesImages[index]["image"],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AddressDropDown extends StatefulWidget {
  const AddressDropDown({super.key});

  @override
  State<AddressDropDown> createState() => _AddressDropDownState();
}

List<String> items = [
  "My Apartment Riyadh",
  "My Office Geddah",
];

class _AddressDropDownState extends State<AddressDropDown> {
  String value = items.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: const Icon(Icons.keyboard_arrow_down,
          color: AppColors.darkTextColor19),
      padding: EdgeInsets.zero,
      style: CustomThemes.darkColor19TextTheme(context)
          .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
      hint: Text(
        "Choose Address",
        style: CustomThemes.greyColor67ColorTextTheme(context)
            .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
      underline: const SizedBox.shrink(),
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
              ),
            ),
          )
          .toList(),
      onChanged: (value) {
        this.value = value!;
        setState(() {});
      },
      value: value,
    );
  }
}

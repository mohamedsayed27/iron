import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/app_router/screens_name.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  List<Map<String, dynamic>> itemsList = [
    {
      "image": ImagesPath.onboarding1,
      "title": "Best Prices & Deals",
      "body": "Don’t miss our daily amazing deals and prices",
    },
    {
      "image": ImagesPath.onboarding2,
      "title": "Refundable",
      "body": "If your items have damage we agree to refund it",
    },
    {
      "image": ImagesPath.onboarding3,
      "title": "Fast delivery",
      "body": "No more waiting, the great service you deserve.",
    },
  ];
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   actions: [
      //     if (currentIndex != 2)
      //       IconButton(
      //         onPressed: () {},
      //         icon: Row(
      //           children: [
      //             Text(
      //               "Skip",
      //               style: CustomThemes.primaryColorTextTheme(context).copyWith(
      //                 fontSize: 14.sp,
      //                 fontWeight: FontWeight.normal,
      //               ),
      //             ),
      //             Icon(
      //               Icons.arrow_forward_ios,
      //               size: 14.r,
      //               color: AppColors.primaryColor,
      //             ),
      //           ],
      //         ),
      //       ),
      //     const CustomSizedBox(
      //       width: 5,
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      itemsList[index]["image"],
                      height: 248.h,
                      width: 248.w,
                    ),
                    Text(
                      itemsList[index]["title"],
                      textAlign: TextAlign.center,
                      style:
                          CustomThemes.primaryColorTextTheme(context).copyWith(
                        fontSize: 24.sp,
                        height: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const CustomSizedBox(
                      height: 8,
                    ),
                    Text(
                      itemsList[index]["body"],
                      textAlign: TextAlign.center,
                      style: CustomThemes.greyColor67ColorTextTheme(context)
                          .copyWith(
                        fontSize: 16.sp,
                        height: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ).symmetricPadding(horizontal: 72)
                  ],
                );
              },
              itemCount: itemsList.length,
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: itemsList.length,
            effect: SlideEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.greyColorC6,
              dotHeight: 13.h,
              dotWidth: 13.w,
            ),
          ),
          const CustomSizedBox(
            height: 48,
          ),
          CustomElevatedButton(
            borderRadiusValue: 12,
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              if(currentIndex==2){
                Navigator.pushReplacementNamed(context, ScreenName.signUpOrSignInScreen);
              }
            },
            width: double.infinity,
            elevation: 0,
            text: currentIndex != 2 ? "Next" : "Start Now",
            padding: EdgeInsets.symmetric(vertical: 14.h),
          ).symmetricPadding(horizontal: 20),
          const CustomSizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

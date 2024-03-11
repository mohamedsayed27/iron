import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/fonts_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_app_bar.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:lottie/lottie.dart';

import '../../../core/assets_path/lottie_path.dart';
import '../../../core/constants/constants.dart';

class TracKYourScreen extends StatefulWidget {
  const TracKYourScreen({super.key});

  @override
  State<TracKYourScreen> createState() => _TracKYourScreenState();
}

class _TracKYourScreenState extends State<TracKYourScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "Track your order",
        ),
      ),
      body: ListView(
        children: [
          Visibility(
            visible: currentIndex >= 4,
            child: CustomSizedBox(
              height: 200,
              width: double.infinity,
              child: Lottie.asset(
                LottiePath.doneLottiePath,
              ),
            ),
          ),
          Visibility(
            visible: currentIndex < 4,
            child: StepperWidget(
              currentIndex: currentIndex,
            ),
          ),
          Visibility(
            visible: currentIndex >= 4,
            child: Text(
              "Thank You",
              textAlign: TextAlign.center,
              style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                fontFamily: FontsPath.belly,
                fontSize: 32.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Visibility(
            visible: currentIndex >= 4,
            child: Text(
              "Your order is delivered successfully ",
              textAlign: TextAlign.center,
              style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ).symmetricPadding(horizontal: 70),
          ),
          const CustomSizedBox(
            height: 32,
          ),
          Visibility(
            visible: currentIndex < 4,
            child: Text(
              "Your order is being preparing",
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(
            height: 60,
          ),
          CustomElevatedButton(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            onPressed: () {},
            borderRadius: BorderRadius.circular(10.r),
            text: "Go to home page",
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(
            height: 60,
          ),
          Visibility(
            visible: currentIndex < 4,
            child: CustomElevatedButton(
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.whiteColor,
              onPressed: () {
                setState(() {
                  currentIndex++;
                  setState(() {});
                });
              },
              borderRadius: BorderRadius.circular(10.r),
              text: "See transition",
            ),
          ).symmetricPadding(horizontal: 16)
        ],
      ),
    );
  }
}

class StepperWidget extends StatelessWidget {
  final int currentIndex;

  const StepperWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const StepperSvgImage(
              svgPath: SvgPath.orderPlacedStepperFill,
            ),
            StepperSvgImage(
              svgPath: currentIndex >= 1
                  ? SvgPath.deliveredStepperFill
                  : SvgPath.delivered,
            ),
            StepperSvgImage(
              svgPath: currentIndex >= 2
                  ? SvgPath.outForStepperFill
                  : SvgPath.outForDelivery,
            ),
            StepperSvgImage(
              svgPath: currentIndex >= 3
                  ? SvgPath.preparingStepperFill
                  : SvgPath.preparingStepper,
            ),
          ],
        ).symmetricPadding(horizontal: 20),
        const CustomSizedBox(
          height: 32,
        ),
        Row(
          children: [
            ProgressCircleWidget(
              isDone: currentIndex > 0,
              isInProgress: true,
            ),
            Expanded(
              child: StepperCircleDivider(
                isDone: currentIndex > 0,
              ),
            ),
            ProgressCircleWidget(
              isDone: currentIndex > 1,
              isInProgress: currentIndex >= 1,
            ),
            Expanded(
              child: StepperCircleDivider(
                isDone: currentIndex > 1,
              ),
            ),
            ProgressCircleWidget(
              isDone: currentIndex > 2,
              isInProgress: currentIndex >= 2,
            ),
            Expanded(
              child: StepperCircleDivider(isDone: currentIndex > 2),
            ),
            ProgressCircleWidget(
              isDone: currentIndex == 3,
              isInProgress: currentIndex >= 3,
            ),
          ],
        ).symmetricPadding(horizontal: 45),
        const CustomSizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: StepperText(
                title: "Order Placed",
                isSelected: currentIndex >= 0,
              ),
            ),
            const CustomSizedBox(
              width: 10,
            ),
            Expanded(
              child: StepperText(
                title: "Preparing",
                isSelected: currentIndex >= 1,
              ),
            ),
            const CustomSizedBox(
              width: 16,
            ),
            Expanded(
              child: StepperText(
                title: "Out For Delivery",
                isSelected: currentIndex >= 2,
              ),
            ),
            const CustomSizedBox(
              width: 10,
            ),
            Expanded(
              child: StepperText(
                title: "Deliverd",
                isSelected: currentIndex >= 3,
              ),
            ),
          ],
        ).onlyDirectionalPadding(end: 18, start: 34)
      ],
    );
  }
}

class StepperText extends StatelessWidget {
  final String title;
  final bool isSelected;

  const StepperText({
    super.key,
    required this.title,
    this.isSelected = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isSelected
          ? CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )
          : CustomThemes.greyColorC6ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
    );
  }
}

class ProgressCircleWidget extends StatelessWidget {
  final bool isDone;
  final bool isInProgress;

  const ProgressCircleWidget(
      {super.key, required this.isDone, required this.isInProgress});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 13.r,
      backgroundColor:
          isInProgress ? AppColors.yellowColor : AppColors.greyColorDF,
      child: isDone
          ? Icon(
              Icons.check,
              color: AppColors.whiteColor,
              size: 16.sp,
            )
          : null,
    );
  }
}

class StepperCircleDivider extends StatelessWidget {
  final bool isDone;

  const StepperCircleDivider({super.key, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1.5.h),
      child: Container(
        color: isDone ? AppColors.yellowColor : AppColors.greyColorDF,
      ),
    );
  }
}

class StepperSvgImage extends StatelessWidget {
  final String svgPath;

  const StepperSvgImage({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: 72.w,
      height: 72.h,
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';
import '../shared_widget/custom_elevated_button.dart';

class FortuneWheelDialog extends StatefulWidget {
  const FortuneWheelDialog({super.key});

  @override
  State<FortuneWheelDialog> createState() => _FortuneWheelDialogState();
}

class _FortuneWheelDialogState extends State<FortuneWheelDialog> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  final items = <String>[
    'Grogu',
    'Mace Windu',
    'Obi-Wan Kenobi',
    'Han Solo',
    'Luke Skywalker',
    'Darth Vader',
    'Yoda',
    'Ahsoka Tano',
  ];

  List<FortuneItem> fortuneItems(context) => [
        FortuneItem(
          child: RotatedBox(
            quarterTurns: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "orem ipsum dolor sit amet, consectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: CustomThemes.whiteColorTextTheme(context).copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  SvgPath.specialOffer,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ).onlyDirectionalPadding(start: 15, end: 15, top: 15),
          ),
          style: const FortuneItemStyle(
            color: AppColors.wheelColor1,
            borderColor: AppColors.wheelColor1,
          ),
        ),
        FortuneItem(
          child: RotatedBox(
            quarterTurns: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "orem ipsum dolor sit amet, consectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: CustomThemes.whiteColorTextTheme(context).copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  SvgPath.specialOffer,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ).onlyDirectionalPadding(start: 15, end: 15, top: 15),
          ),
          style: const FortuneItemStyle(
            color: AppColors.wheelColor2,
            borderColor: AppColors.wheelColor2,
          ),
        ),
        FortuneItem(
          child: RotatedBox(
            quarterTurns: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "orem ipsum dolor sit amet, consectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: CustomThemes.whiteColorTextTheme(context).copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  SvgPath.specialOffer,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ).onlyDirectionalPadding(start: 15, end: 15, top: 15),
          ),
          style: const FortuneItemStyle(
            color: AppColors.wheelColor3,
            borderColor: AppColors.wheelColor3,
          ),
        ),
        FortuneItem(
          child: RotatedBox(
            quarterTurns: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "orem ipsum dolor sit amet, consectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: CustomThemes.whiteColorTextTheme(context).copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  SvgPath.specialOffer,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ).onlyDirectionalPadding(start: 15, end: 15, top: 15),
          ),
          style: const FortuneItemStyle(
            color: AppColors.wheelColor4,
            borderColor: AppColors.wheelColor4,
          ),
        ),
        FortuneItem(
          child: RotatedBox(
            quarterTurns: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "orem ipsum dolor sit amet, consectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: CustomThemes.whiteColorTextTheme(context).copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  SvgPath.specialOffer,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ).onlyDirectionalPadding(start: 15, end: 15, top: 15),
          ),
          style: const FortuneItemStyle(
            color: AppColors.wheelColor5,
            borderColor: AppColors.wheelColor5,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 0,
      // insetPadding: EdgeInsets.,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomSizedBox(
              width: 26.w,
              height: 26.h,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear),
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                "Try Your Luck Today!",
                style: CustomThemes.darkColor19TextTheme(context).copyWith(
                  fontFamily: FontsPath.belly,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 290.h,
            width: double.infinity,
            child: FortuneWheel(
              selected: selected.stream,
              alignment: Alignment.center,
              indicators: <FortuneIndicator>[
                // FortuneIndicator(
                //   alignment: Alignment.topCenter,
                //   child: TriangleIndicator(
                //     color: Colors.green,
                //   ),
                // ),
                FortuneIndicator(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    SvgPath.spin,
                    height: 68.h,
                    width: 54.w,
                  ),
                ),
              ],
              items: fortuneItems(context),
            ),
          ),
          CustomElevatedButton(
            text: "Spin The Wheel",
            onPressed: () {
              selected.add(1);
            },
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
        ],
      ).symmetricPadding(horizontal: 20, vertical: 16),
    );
  }
}

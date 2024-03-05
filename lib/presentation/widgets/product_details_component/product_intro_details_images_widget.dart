import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';


class ProductIntroDetailsComponent extends StatelessWidget {
  const ProductIntroDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 186.h,
              width: 160.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(
                ImagesPath.productDummyImage,
                fit: BoxFit.contain,
              ),
            ),
            const CustomSizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Name",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.darkColor12TextTheme(context).copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  color: AppColors.yellowColor,
                  alignment: Alignment.center,
                  child: Text(
                    "SAVE 30%",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomThemes.darkColor12TextTheme(context).copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.1.h,
                    ),
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "450 SAR",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.primaryColorTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "Subscribers Price",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.darkColor12TextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "350 SAR",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "Exp Date: 13/03/2026",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 6,
                ),
                const CounterWidget()
              ],
            )
          ],
        ),
        const CustomSizedBox(
          height: 20,
        ),
        const RelatedImagesWidget(),
      ],
    );
  }
}
class RelatedImagesWidget extends StatelessWidget {
  const RelatedImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 73.h,
                width: 73.w,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.greyColorC6,
                      width: 1.08.w,
                    )),
                child: Image.asset(
                  ImagesPath.productDummyImage,
                  fit: BoxFit.contain,
                ),
              ),
              const CustomSizedBox(
                height: 6,
              ),
              Text(
                "Flavor ${index + 1}",
                style: CustomThemes.greyColor67ColorTextTheme(context)
                    .copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.1.h,
                ),
              )
            ],
          ),
          separatorBuilder: (_, index) => const CustomSizedBox(
            width: 16,
          ),
          itemCount: 3),
    );
  }
}



class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width: 104,
      child: Row(
        children: [
          SizedBox(
            height: 28.h,
            width: 28.w,
            child: ElevatedButton(
              onPressed: () {
                if (counter > 1) {
                  counter--;

                  setState(() {});
                }
              },
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.yellowColor,
                foregroundColor: AppColors.whiteColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  SvgPath.minus,
                  colorFilter: const ColorFilter.mode(
                      AppColors.whiteColor, BlendMode.srcIn),
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              counter.toString(),
              textAlign: TextAlign.center,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                height: 1.1.h,
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
            width: 28.w,
            child: ElevatedButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.yellowColor,
                foregroundColor: AppColors.whiteColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  SvgPath.plus,
                  colorFilter: const ColorFilter.mode(
                      AppColors.whiteColor, BlendMode.srcIn),
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
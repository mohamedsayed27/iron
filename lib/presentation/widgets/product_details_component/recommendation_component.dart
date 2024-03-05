import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/component_title_header_widget.dart';

class RecommendationCheckItemWidget extends StatefulWidget {
  const RecommendationCheckItemWidget({super.key});

  @override
  State<RecommendationCheckItemWidget> createState() =>
      _RecommendationCheckItemWidgetState();
}

class _RecommendationCheckItemWidgetState
    extends State<RecommendationCheckItemWidget> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        // shape: RoundedRectangleBorder(
        //   side: BorderSide(
        //     color: AppColors.whiteColor,
        //   ),
        // ),
        side: BorderSide(
          color: AppColors.primaryColor
          ,
        ),

        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        onChanged: (value) {
          this.value = value;
          setState(() {});
        },
        visualDensity: const VisualDensity(
          vertical: VisualDensity.minimumDensity,
          horizontal: VisualDensity.minimumDensity,
        ),
      ),
      horizontalTitleGap: 12.w,
      titleAlignment: ListTileTitleAlignment.titleHeight,
      visualDensity: const VisualDensity(
        vertical: VisualDensity.minimumDensity,
        horizontal: VisualDensity.minimumDensity,
      ),
      contentPadding: EdgeInsets.zero,
      style: ListTileStyle.list,
      onTap: () {
        value = !value!;
        setState(() {});
      },
      title: RichText(
        text: TextSpan(
          text: "Product Name: ",
          style: CustomThemes.primaryColorTextTheme(context).copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: "Lorem isp adipiscing elit: 10 SAR",
              style: CustomThemes.greyColor34ColorTextTheme(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendComponent extends StatefulWidget {
  const RecommendComponent({super.key});

  @override
  State<RecommendComponent> createState() => _RecommendComponentState();
}

class _RecommendComponentState extends State<RecommendComponent> {
  List<String> imagesList = [
    ImagesPath.dummyReviewsImage1,
    ImagesPath.dummyReviewsImage2,
    ImagesPath.dummyReviewsImage3,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ComponentHeaderTitleWidget(
          title: "Recommended For you",
          imagePath: SvgPath.recommendForYouIcon,
        ),
        const CustomSizedBox(
          height: 12,
        ),
        SizedBox(
          height: 79.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (_, index) => Container(
              height: 79.h,
              width: 72.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(
                imagesList[index],
                fit: BoxFit.cover,
              ),
            ),
            separatorBuilder: (_, index) => Icon(
              Icons.add,
              size: 32.sp,
              color: AppColors.primaryColor,
            ).symmetricPadding(horizontal: 14),
            itemCount: imagesList.length,
          ),
        ),
      ],
    );
  }
}
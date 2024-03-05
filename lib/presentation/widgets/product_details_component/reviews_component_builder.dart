import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../screens/products_screen/product_details_screen.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../shared_widget/component_title_header_widget.dart';
import '../shared_widget/custom_divider.dart';

class AddReviewComponent extends StatelessWidget {
  const AddReviewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeaderTitleWidget(
          title: "Add review",
          imagePath: SvgPath.addReview,
        ),
        const CustomSizedBox(
          height: 12,
        ),
        RatingBar.builder(
          itemBuilder: (_, index) {
            return const Icon(
              Icons.star,
              color: AppColors.yellowColor,
            );
          },
          itemCount: 5,
          itemSize: 15.r,
          ignoreGestures: false,
          initialRating: 0,
          unratedColor: AppColors.greyColorC6,
          onRatingUpdate: (value) {},
        ),
        const CustomSizedBox(
          height: 8,
        ),
        const CustomTextField(
          hintText: "Write your comment",
          maxLines: 6,
          borderRadius: 12,
        ),
        const CustomSizedBox(
          height: 8,
        ),
        const CustomTextField(
          hintText: "Name",
          borderRadius: 12,
        ),
        const CustomSizedBox(
          height: 8,
        ),
        const CustomTextField(
          hintText: "Email",
          borderRadius: 12,
        ),
        const CustomSizedBox(
          height: 8,
        ),
        const CustomTextField(
          hintText: "Upload photo",
          borderRadius: 12,
          suffixIcon: IconButton(
            onPressed: null,
            icon: Icon(Icons.camera_alt),
          ),
        ),
        const CustomSizedBox(
          height: 16,
        ),
        SizedBox(
          height: 60.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (_, index) => Container(
              height: 60.h,
              width: 72.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.greyColorF5,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Icon(
                      Icons.clear,
                      color: AppColors.greyColor92,
                      size: 12.r,
                    ),
                  ),
                  const CustomSizedBox(
                    height: 2,
                  ),
                  SvgPicture.asset(
                    SvgPath.imageGallery,
                    width: 25.w,
                    height: 25.h,
                  )
                ],
              ).symmetricPadding(horizontal: 8, vertical: 4),
            ),
            separatorBuilder: (_, index) => const CustomSizedBox(
              width: 16,
            ),
            itemCount: 3,
          ),
        ),
        const CustomSizedBox(
          height: 16,
        ),
        CustomElevatedButton(
          text: "Submit",
          onPressed: () {},
          width: double.infinity,
          borderRadius: BorderRadius.circular(12.r),
          backgroundColor: AppColors.primaryColor,
          height: 48,
        ),
      ],
    );
  }
}

class ReviewsComponent extends StatelessWidget {
  const ReviewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ComponentHeaderTitleWidget(
          title: "Reviews",
          imagePath: SvgPath.reviews,
        ),
        CustomSizedBox(
          height: 16,
        ),
        ReviewsBuilder()
      ],
    );
  }
}

class ReviewsBuilder extends StatefulWidget {
  const ReviewsBuilder({super.key});

  @override
  State<ReviewsBuilder> createState() => _ReviewsBuilderState();
}



class _ReviewsBuilderState extends State<ReviewsBuilder> {
  List<String> imagesList = [
    ImagesPath.dummyReviewsImage1,
    ImagesPath.dummyReviewsImage2,
    ImagesPath.dummyReviewsImage3,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 72.h,
                width: 72.w,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  ImagesPath.profileImage,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Name",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomThemes.darkColor12TextTheme(context).copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.1.h,
                ),
              )
            ],
          ),
          const CustomSizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomThemes.darkColor12TextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "December 4, 2022",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                  CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consctetur adipiscing elit. Ut hendrerit tristique pretium",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style:
                  CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.1.h,
                  ),
                ),
                const CustomSizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      itemBuilder: (_, index) {
                        return const Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                        );
                      },
                      itemCount: 5,
                      itemSize: 12.r,
                      ignoreGestures: true,
                      initialRating: 3,
                      unratedColor: AppColors.greyColorC6,
                      onRatingUpdate: (value) {},
                    ),
                    Text(
                      "(4)",
                      style:
                      CustomThemes.darkColor19TextTheme(context).copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.1.h,
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox(
                  height: 8,
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
                    separatorBuilder: (_, index) => const CustomSizedBox(
                      width: 16,
                    ),
                    itemCount: imagesList.length,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      separatorBuilder: (_, index) =>
          const CustomDivider().symmetricPadding(vertical: 16),
      itemCount: 2,
    );
  }
}
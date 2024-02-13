import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/images_path.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/screens/products_screen/products_screen.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_elevated_button.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Product Name",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        children: [
          const ProductDetailsComponent(),
          const CustomSizedBox(height: 20,),
          const FlavorsWidget(),
          const CustomSizedBox(height: 20,),
          const DescriptionComponent(),
          const CustomSizedBox(height: 16,),
          const CustomDivider(),
          const CustomSizedBox(height: 16,),
          const ExpirationDateWidget(),
          const CustomSizedBox(height: 16,),
          const CustomDivider(),
          const CustomSizedBox(height: 16,),
          const NutritionComponent(),
          const CustomSizedBox(height: 16,),
          const ReviewsComponent(),
          const CustomSizedBox(height: 16,),
          const CustomDivider(),
          const CustomSizedBox(height: 16,),
          const AddReviewComponent(),
          const CustomSizedBox(height: 16,),
          const RelatedProduct(),
          const CustomSizedBox(height: 16,),
          CustomElevatedButton(
            text: "Add to cart",
            onPressed: () {},
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
        ],
      ),
    );
  }
}
class RelatedProduct extends StatelessWidget {
  const RelatedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              "Related Products",
              style: CustomThemes.darkColor19TextTheme(context).copyWith(
                fontFamily: FontsPath.belly,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const CustomSizedBox(height: 16,),
        SizedBox(
          height: 185.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => const ProductComponent(),
            separatorBuilder: (_, index) => const CustomSizedBox(
              width: 14,
            ),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}


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
        CustomSizedBox(height: 16,),
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

class NutritionComponent extends StatelessWidget {
  const NutritionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ComponentHeaderTitleWidget(
          title: "Nutrition",
          imagePath: SvgPath.nutrition,
        ),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Protien", percent: 73),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Carbs", percent: 20),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Fat", percent: 10),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Protien", percent: 73),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Carbs", percent: 20),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
        CustomSizedBox(
          height: 8,
        ),
        RatingWidget(title: "Fat", percent: 10),
        CustomSizedBox(
          height: 12,
        ),
        CustomDivider(),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  const CustomDivider({super.key, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h??1.5.h,
      color: color??AppColors.dividerColor,
      width: double.infinity,
    );
  }
}

class RatingWidget extends StatelessWidget {
  final String title;
  final double percent;

  const RatingWidget({super.key, required this.title, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.1.h,
            ),
          ),
        ),
        const CustomSizedBox(
          width: 8,
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 5.h,
            decoration: BoxDecoration(
              color: AppColors.greyColorC6,
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: AlignmentDirectional.centerStart,
            child: FractionallySizedBox(
              widthFactor: percent / 100,
              heightFactor: 1,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 1.h),
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "${percent.round()} %",
            textAlign: TextAlign.end,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.1.h,
            ),
          ),
        ),
      ],
    );
  }
}

class FlavorsWidget extends StatelessWidget {
  const FlavorsWidget({super.key});

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

class ExpirationDateWidget extends StatelessWidget {
  const ExpirationDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeaderTitleWidget(
          imagePath: SvgPath.expiration,
          title: "Expiration",
        ),
        const CustomSizedBox(
          height: 8,
        ),
        Text(
          "Exp Date: 13/03/2026",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.1.h,
          ),
        ),
      ],
    );
  }
}

class DescriptionComponent extends StatelessWidget {
  const DescriptionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeaderTitleWidget(
          imagePath: SvgPath.description,
          title: "Description",
        ),
        const CustomSizedBox(
          height: 8,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit tristiqueasdwfa. pretium gravida felis, sociis in felis.Diam habitant natoque libero, sit et duis ",
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.1.h,
          ),
        ),
      ],
    );
  }
}

class ComponentHeaderTitleWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const ComponentHeaderTitleWidget(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imagePath,
          width: 25.w,
          height: 25.h,
        ),
        const CustomSizedBox(
          width: 8,
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.darkColor12TextTheme(context).copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            height: 1.1.h,
          ),
        )
      ],
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

class ProductDetailsComponent extends StatelessWidget {
  const ProductDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

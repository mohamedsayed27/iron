import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/product_details_component/discription_component.dart';
import '../../widgets/product_details_component/expiration_date_widget.dart';
import '../../widgets/product_details_component/flavors_categories_component.dart';
import '../../widgets/product_details_component/nutrition_builder.dart';
import '../../widgets/product_details_component/product_intro_details_images_widget.dart';
import '../../widgets/product_details_component/recommendation_component.dart';
import '../../widgets/product_details_component/related_product_component.dart';
import '../../widgets/product_details_component/reviews_component_builder.dart';
import '../../widgets/product_details_component/shapes_component.dart';
import '../../widgets/shared_widget/custom_divider.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';
import '../../widgets/shared_widget/custom_outlined_button.dart';
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
          const ProductIntroDetailsComponent(),
          const CustomSizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            text: "Add to cart",
            onPressed: () {},
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
          const CustomSizedBox(
            height: 16,
          ),
          CustomOutlinedButton(
            borderColor: AppColors.primaryColor,
            borderRadius: 12,
            onPressed: () {},
            text: "Save",
            height: 48,
            foregroundColor: AppColors.primaryColor,
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Text(
            "Flavors",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.darkColor12TextTheme(context).copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              height: 1.1.h,
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          const FlavorsCategoryComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          Text(
            "Shapes",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.darkColor12TextTheme(context).copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              height: 1.1.h,
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          const ShapesCategoryComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const RecommendComponent(),
          const CustomSizedBox(
            height: 8,
          ),
          const RecommendationCheckItemWidget(),
          const RecommendationCheckItemWidget(),
          const RecommendationCheckItemWidget(),
          const CustomSizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            text: "Add to cart",
            onPressed: () {},
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
          const CustomSizedBox(
            height: 16,
          ),
          const DescriptionComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 16,
          ),
          const ExpirationDateWidget(),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 16,
          ),
          const NutritionComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const ReviewsComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 16,
          ),
          const AddReviewComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const RelatedProduct(),
          const CustomSizedBox(
            height: 16,
          ),
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




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/component_title_header_widget.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_text_form_field.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../widgets/shared_widget/custom_divider.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';
import '../../widgets/shared_widget/custom_outlined_button.dart';
import '../../widgets/shared_widget/order_summary_screen.dart';
import '../products_screen/product_details_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Cart",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Text(
            "3 Items in your cart",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          const CartItemsComponent(),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 16,
          ),
          const OrderSummaryComponent(),
          const CustomSizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            text: "Payment method",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.paymentMethodsScreen);
            },
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
            backgroundColor: AppColors.primaryColor,
            height: 48,
          ),
          const CustomSizedBox(
            height: 20,
          ),
          CartOrdersWidget(title: "Past Orders",),
          const CustomSizedBox(
            height: 20,
          ),
          CartOrdersWidget(title: "Recommended for you",),
        ],
      ),
    );
  }
}

class CartOrdersWidget extends StatelessWidget {
  final String title;
  const CartOrdersWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentHeaderTitleWidget(
          imagePath: SvgPath.pastOrders,
          title: title,
        ),
        CustomSizedBox(
          height: 176,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            itemBuilder: (_, index) {
              return Container(
                height: 149.h,
                width: 267.w,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor(),
                      offset: Offset.zero,
                      blurRadius: 10.r,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    CustomSizedBox(
                      height: double.infinity,
                      width: 102,
                      child: Image.asset(
                        ImagesPath.dummyReviewsImage3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Title here",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: CustomThemes.darkColor12TextTheme(context)
                                .copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.1.h,
                            ),
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
                                itemSize: 16.sp,
                                ignoreGestures: true,
                                initialRating: 3,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.56.w),
                                unratedColor: AppColors.greyColorC6,
                                onRatingUpdate: (value) {},
                              ),
                              Text(
                                "(4)",
                                style:
                                    CustomThemes.darkColor19TextTheme(context)
                                        .copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1.h,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Lorem ipsum dolor sit etur adipiscing elit. " * 2,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomThemes.greyColor67ColorTextTheme(context)
                                    .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.1.h,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: CustomOutlinedButton(
                                  borderColor: AppColors.primaryColor,
                                  padding: EdgeInsets.zero,
                                  borderWidth: 2,
                                  borderRadius: 8,
                                  onPressed: () {},
                                  text: "Add to Cart",
                                  style:
                                  CustomThemes.darkColor12TextTheme(context)
                                      .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1.h,
                                  ),
                                  height: 32,
                                  foregroundColor: AppColors.primaryColor,
                                ),
                              ),
                              CustomSizedBox(
                                width: 8,
                              ),
                              Text(
                                "90\$",
                                style:
                                CustomThemes.darkColor19TextTheme(context)
                                    .copyWith(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ).symmetricPadding(vertical: 8, horizontal: 8),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) {
              return const CustomSizedBox(
                width: 16,
              );
            },
            itemCount: 4,
          ),
        )
      ],
    );
  }
}

class CartItemsComponent extends StatelessWidget {
  const CartItemsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => const CartProductItem(),
      separatorBuilder: (_, index) =>
          const CustomDivider().symmetricPadding(vertical: 16),
      itemCount: 3,
    );
  }
}

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85.h,
      child: Row(
        children: [
          Container(
            height: 84.h,
            width: 78.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.lightBabyBlueColor,
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Name",
                      style:
                          CustomThemes.darkColor12TextTheme(context).copyWith(
                        fontSize: 16.sp,
                        height: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SvgPicture.asset(
                      SvgPath.basket,
                      height: 21.h,
                      width: 18.w,
                    )
                  ],
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                Text(
                  "Per Item :",
                  style: CustomThemes.darkColor12TextTheme(context).copyWith(
                    fontSize: 16.sp,
                    height: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.primaryColor,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "1",
                        style:
                            CustomThemes.whiteColorTextTheme(context).copyWith(
                          fontSize: 16.sp,
                          height: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      "4.50 SAR",
                      style: CustomThemes.greyColor49ColorTextTheme(context)
                          .copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class TitlePriceComponent extends StatelessWidget {
  final String title;
  final String price;
  final TextStyle? titleStyle;
  final TextStyle? priceStyle;

  const TitlePriceComponent({
    super.key,
    required this.title,
    required this.price,
    this.titleStyle,
    this.priceStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleStyle ??
              CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          price,
          style: priceStyle ??
              CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

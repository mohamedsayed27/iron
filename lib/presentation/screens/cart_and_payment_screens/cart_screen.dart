import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';
import '../product_details_screen/product_details_screen.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        children: [
          Text(
            "3 Items in your cart",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CustomSizedBox(height: 16,),
          const CartItemsComponent(),
          const CustomSizedBox(height: 16,),
          const CustomDivider(),
          const CustomSizedBox(height: 16,),
          const OrderSummaryComponent(),
          const CustomSizedBox(height: 20,),
          CustomElevatedButton(
            text: "Payment method",
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

class OrderSummaryComponent extends StatelessWidget {
  const OrderSummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Summary",
          style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        const CustomSizedBox(height: 12,),
        const TitlePriceComponent(title: "Products Subtotal", price: "4.50 SAR"),
        const CustomSizedBox(height: 12,),
        TitlePriceComponent(title: "Delivery", price: "Free",priceStyle: CustomThemes.redTextStyle(context).copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500,),),
        const CustomSizedBox(height: 12,),
        const TitlePriceComponent(title: "Grand Total", price: "4.50 SAR"),
        const CustomSizedBox(height: 12,),
        const TitlePriceComponent(title: "VAT", price: "0 SAR"),
        const CustomSizedBox(height: 12,),
        Text(
          "Pay 53.00 only if you subscribed to our discount package",
          style: CustomThemes.redTextStyle(context).copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500,),
        ),
        const CustomSizedBox(height: 16,),
        const CustomDivider(),
        const CustomSizedBox(height: 16,),
        TitlePriceComponent(title: "Total", price: "4.50 SAR",priceStyle: CustomThemes.greyColor49ColorTextTheme(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700,),titleStyle: CustomThemes.greyColor49ColorTextTheme(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700,),),
        const CustomSizedBox(height: 16,),
        TitlePriceComponent(title: "After Discount", price: "53.0 SAR",priceStyle: CustomThemes.redTextStyle(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700,),titleStyle: CustomThemes.redTextStyle(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700,),),
        const CustomSizedBox(height: 12,),
        Text(
          "You save 17.00 SAR",
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(fontSize: 12.sp,fontWeight: FontWeight.w600,),
        ),
      ],
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../screens/cart_and_payment_screens/cart_screen.dart';
import '../../widgets/shared_widget/custom_divider.dart';
import 'custom_sized_box.dart';
import 'custom_text_form_field.dart';


class OrderSummaryComponent extends StatelessWidget {
  final bool isPromoCodeSeen;
  const OrderSummaryComponent({super.key, this.isPromoCodeSeen = false});

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
        const CustomSizedBox(
          height: 12,
        ),
        const TitlePriceComponent(
            title: "Products Subtotal", price: "4.50 SAR"),
        const CustomSizedBox(
          height: 12,
        ),
        TitlePriceComponent(
          title: "Delivery",
          price: "Free",
          priceStyle: CustomThemes.redTextStyle(context).copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const CustomSizedBox(
          height: 12,
        ),
        const TitlePriceComponent(title: "Grand Total", price: "4.50 SAR"),
        const CustomSizedBox(
          height: 12,
        ),
        const TitlePriceComponent(title: "VAT", price: "0 SAR"),
        const CustomSizedBox(
          height: 12,
        ),
        Text(
          "Pay 53.00 only if you subscribed to our discount package",
          style: CustomThemes.redTextStyle(context).copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        if(isPromoCodeSeen)const CustomSizedBox(
          height: 16,
        ),
       if(isPromoCodeSeen) const CustomDivider(),
        if(isPromoCodeSeen)const CustomSizedBox(
          height: 16,
        ),
        if(isPromoCodeSeen)CustomTextField(
          hintText: "Enter voucher code",
          borderSideColor: AppColors.greyColor92,
          borderRadius: 10,
          suffixIcon: TextButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: CustomThemes.redTextStyle(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const CustomSizedBox(
          height: 16,
        ),
        const CustomDivider(),
        const CustomSizedBox(
          height: 16,
        ),
        TitlePriceComponent(
          title: "Total",
          price: "4.50 SAR",
          priceStyle: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
          titleStyle: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        const CustomSizedBox(
          height: 16,
        ),
        TitlePriceComponent(
          title: "After Discount",
          price: "53.0 SAR",
          priceStyle: CustomThemes.redTextStyle(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
          titleStyle: CustomThemes.redTextStyle(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        const CustomSizedBox(
          height: 12,
        ),
        Text(
          "You save 17.00 SAR",
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
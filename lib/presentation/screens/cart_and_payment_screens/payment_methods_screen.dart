import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../widgets/shared_widget/custom_divider.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/enums/payment_method_enum.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';
import '../../widgets/shared_widget/order_summary_screen.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  PaymentMethodType? paymentMethodType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Payment method",
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
          CheckPaymentMethodComponent(
            onChanged: (value) {
              paymentMethodType = value;
              setState(() {});
            },
            type: paymentMethodType,
          ),
          const CustomSizedBox(
            height: 16,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 8,
          ),
          Text(
            "Name on Card",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CustomSizedBox(
            height: 6,
          ),
          Text(
            "Ahmed Khaled",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomSizedBox(
            height: 8,
          ),
          if (paymentMethodType == PaymentMethodType.card)
            const CustomDivider(),
          if (paymentMethodType == PaymentMethodType.card)
            const CustomSizedBox(
              height: 8,
            ),
          if (paymentMethodType == PaymentMethodType.card)
            Text(
              "Card Number",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          if (paymentMethodType == PaymentMethodType.card)
            const CustomSizedBox(
              height: 6,
            ),
          if (paymentMethodType == PaymentMethodType.card)
            Row(
              children: [
                Expanded(
                  child: Text(
                    "**** **** **** 2153",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomThemes.greyColor49ColorTextTheme(context)
                        .copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                CustomSizedBox(
                  height: 20,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      "Change",
                      style:
                          CustomThemes.primaryColorTextTheme(context).copyWith(
                        fontSize: 16.sp,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (paymentMethodType == PaymentMethodType.card)
            const CustomSizedBox(
              height: 8,
            ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 8,
          ),
          Text(
            "Address",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CustomSizedBox(
            height: 6,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColors.greyColor49,
                size: 26.r,
              ),
              Expanded(
                child: Text(
                  "221 B Santa Monica, Los Angeles",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const CustomSizedBox(
                width: 8,
              ),
              CustomSizedBox(
                height: 20,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(
                    "Change",
                    style: CustomThemes.primaryColorTextTheme(context).copyWith(
                      fontSize: 16.sp,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const CustomSizedBox(
            height: 8,
          ),
          const CustomDivider(),
          const CustomSizedBox(
            height: 8,
          ),
          const OrderSummaryComponent(),
          const CustomSizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            text: "Place order",
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

class AddCardDetails extends StatelessWidget {
  const AddCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CheckPaymentMethodComponent extends StatelessWidget {
  final void Function(PaymentMethodType?)? onChanged;
  final PaymentMethodType? type;

  const CheckPaymentMethodComponent({super.key, this.onChanged, this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentMethodItem(
          paymentMethodType: PaymentMethodType.card,
          groupedValue: type,
          imagePath: ImagesPath.creditCard,
          title: "Card",
          onChanged: onChanged,
        ),
        PaymentMethodItem(
          paymentMethodType: PaymentMethodType.wallet,
          groupedValue: type,
          imagePath: ImagesPath.wallet,
          title: "Wallet",
          onChanged: onChanged,
        ),
        PaymentMethodItem(
          paymentMethodType: PaymentMethodType.cashOnDelivery,
          groupedValue: type,
          imagePath: ImagesPath.cashOnDelivery,
          title: "Cash on delivery",
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethodType paymentMethodType;
  final PaymentMethodType? groupedValue;
  final void Function(PaymentMethodType?)? onChanged;
  final String imagePath;
  final String title;

  const PaymentMethodItem({
    super.key,
    required this.paymentMethodType,
    this.groupedValue,
    this.onChanged,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 16.r,
      splashColor: Colors.transparent,
      visualDensity: const VisualDensity(
        vertical: VisualDensity.minimumDensity,
        horizontal: VisualDensity.minimumDensity,
      ),
      focusColor: Colors.transparent,
      selectedColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      onTap: () {
        onChanged!(paymentMethodType);
      },
      leading: Radio(
        visualDensity: const VisualDensity(
          vertical: VisualDensity.minimumDensity,
          horizontal: VisualDensity.minimumDensity,
        ),
        value: paymentMethodType,
        groupValue: groupedValue,
        onChanged: onChanged,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      title: Row(
        children: [
          Image.asset(
            imagePath,
            width: 20.w,
            height: 20.h,
          ),
          const CustomSizedBox(
            width: 16,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widget/custom_app_bar.dart';

class YourOrdersScreen extends StatelessWidget {
  const YourOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "Your Orders",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSizedBox(height: 24,),
          Text(
            "Your Orders",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(height: 16,),
          const OrderWidget(status: "Pending", isDelivered: false, action: "Cancel"),
          const CustomSizedBox(height: 24,),
          Text(
            "History",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(height: 16,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return const OrderWidget(status: "Delivered", isDelivered: true, action: "Reorder");
              },
              separatorBuilder: (_, index) {
                return const CustomSizedBox(
                  height: 16,
                );
              },
              itemCount: 10,
            ),
          ),
          const CustomSizedBox(height: 16,),
        ],
      ).symmetricPadding(horizontal: 16),
    );
  }
}

class OrderWidget extends StatelessWidget {
  final String status;
  final String action;
  final bool isDelivered;

  const OrderWidget(
      {super.key,
      required this.status,
      required this.isDelivered,
      required this.action,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 104.h,
          width: 96.w,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomThemes.darkColor12TextTheme(context).copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    status,
                    style: CustomThemes.primaryColorTextTheme(context).copyWith(
                      fontSize: 16.sp,
                      color: isDelivered ? AppColors.greenColor : null,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const CustomSizedBox(
                    width: 8,
                  ),
                  if (isDelivered)
                    SvgPicture.asset(
                      SvgPath.checkIcon,
                      width: 14.w,
                      height: 14.h,
                    ),
                ],
              ),
              Text(
                "Order date and time",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Order ID: 1234567891",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    action,
                    style: CustomThemes.redTextStyle(context).copyWith(
                      fontSize: 16.sp,
                      color: isDelivered ? AppColors.yellowColor : null,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const CustomSizedBox(
                    width: 8,
                  ),
                  if (isDelivered)
                    SvgPicture.asset(
                      SvgPath.rotateLeftIcon,
                      width: 14.w,
                      height: 14.h,
                    ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

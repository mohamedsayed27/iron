import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/presentation/screens/products_screen/product_details_screen.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/profile_background_widget/profile_background_widget.dart';
import '../../widgets/shared_widget/custom_elevated_button.dart';

import '../../widgets/shared_widget/custom_divider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColorED,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.greyColorED,
        title: Text(
          "Account",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ProfileBackgroundBody(
        isEditProfile: false,
        children: [
          TabItemWidget(
            iconPath: SvgPath.wallet,
            title: "Wallet",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.walletScreen);
            },
          ),
          const CustomDivider(
            color: AppColors.primaryColor,
            height: 1,
          ),
          TabItemWidget(
            iconPath: SvgPath.myOrders,
            title: "My Orders",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.myOrdersScreen);
            },
          ),
          const CustomDivider(
            color: AppColors.primaryColor,
            height: 1,
          ),
          TabItemWidget(
            iconPath: SvgPath.accountInfo,
            title: "Account info",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.editProfileScreen);
            },
          ),
          const CustomDivider(
            color: AppColors.primaryColor,
            height: 1,
          ),
          TabItemWidget(
            iconPath: SvgPath.heartOutlined,
            title: "Wishlist",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.wishListScreen);
            },
          ),
          const CustomDivider(
            color: AppColors.primaryColor,
            height: 1,
          ),
          TabItemWidget(
            iconPath: SvgPath.savedAddress,
            title: "Saved addresses",
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.savedAddress);
            },
          ),
          const CustomDivider(
            color: AppColors.primaryColor,
            height: 1,
          ),
          TabItemWidget(
            iconPath: SvgPath.phone,
            title: "Contact us",
            onPressed: () {},
          ),
          const CustomSizedBox(
            height: 48,
          ),
          CustomElevatedButton(
            text: "Logout",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ScreenName.loginScreen, (route) => false);
            },
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

class TabItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final void Function()? onPressed;

  const TabItemWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.greyColor49,
        size: 20.r,
      ),
      contentPadding: EdgeInsets.zero,
      onTap: onPressed,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: SvgPicture.asset(
        iconPath,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}

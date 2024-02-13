import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_sized_box.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';

class ProfileBackgroundBody extends StatelessWidget {
  final List<Widget> children;
  final bool isEditProfile;
  final void Function()? editImageClick;
  const ProfileBackgroundBody({
    super.key,
    required this.children, required this.isEditProfile, this.editImageClick,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(top: 75.h),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(80.r),
              topLeft: Radius.circular(80.r),
            ),
          ),
        ),
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, ),
          children: [
            const CustomSizedBox(
              height: 25,
            ),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 118.h,
                    width: 118.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      ImagesPath.profileImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  if(isEditProfile)PositionedDirectional(
                    end: 1,
                    bottom: 6,
                    child: InkWell(
                      onTap: editImageClick,

                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: AppColors.whiteColor,
                            width: 2.w,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 16.r,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const CustomSizedBox(
              height: 8,
            ),
            if(!isEditProfile)Center(
              child: Column(
                children: [
                  Text(
                    "Ahmed Khaled",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "info@gmail.com",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            if(isEditProfile)Center(
              child:
              Text(
                "Edit your profile",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ...children
          ],
        ),
      ],
    );
  }
}

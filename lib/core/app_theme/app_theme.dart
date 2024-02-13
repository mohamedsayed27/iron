import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets_path/fonts_path.dart';
import 'app_colors.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(
    primarySwatch: AppColors.createMaterialColor(AppColors.primaryColor),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    primaryColor: AppColors.primaryColor,
    canvasColor: Colors.white,
    useMaterial3: true,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,

    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      showDragHandle: true,
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.primaryColor,
      ),
      titleLarge: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.whiteColor,
      ),
      titleSmall: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.darkTextColor19,
      ),
      titleMedium: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.greyColor49,
      ),
      labelLarge: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.greyColor67,
      ),
      labelMedium: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.greyColor92
      ),
      labelSmall: TextStyle(
        fontFamily: FontsPath.pantonTrail,
        color: AppColors.greyColorC6
      ),
      bodyLarge: TextStyle(
        color: AppColors.greyColor4E,
        fontFamily: FontsPath.pantonTrail,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkColo12r,
        fontFamily: FontsPath.pantonTrail,
      ),
      bodySmall: TextStyle(
        color: AppColors.redColor,
        fontFamily: FontsPath.pantonTrail,
      )
    ),
  );

}
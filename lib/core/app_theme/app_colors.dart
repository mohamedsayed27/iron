import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  static const primaryColor = Color(0xff197CC1);
  static  shadowColor({double value = 0.1}) => blackColor.withOpacity(value);
  static const whiteColor = Color(0xffFFFFFF);
  static const lightBabyBlueColor = Color(0xffD1E5F2);
  static const lightYellowColor = Color(0xffFEF2D2);
  static const lightGreyColor = Color(0xffF0F0F0);
  static const redColor = Color(0xffD00000);
  static const fillPinFilledActiveItem =  Color(0xffEFF7FE);
  static const blackColor = Color(0xff000000);
  static const greyColor67 = Color(0xff676767);
  static const greyColor92 = Color(0xff929292);
  static const greyColor49 = Color(0xff494949);
  static const greyColorF5 = Color(0xffF5F5F5);
  static const greyColorF6 = Color(0xffF6F6F6);
  static const greyColor34 = Color(0xff343434);
  static const greyColorED = Color(0xffEDEDED);
  static const greyColorDF = Color(0xffDFDFDF);
  static const greyColorC6 = Color(0xffC6C6C6);
  static const dividerColor = Color(0xffE1E1E1);
  static const randomColor = Color(0xfff3f3f3);
  static const yellowColor = Color(0xffFBBD1E);
  static const greyColor4E = Color(0xff4E4E4E);
  static const darkColo12r = Color(0xff124F7A);
  static const searchIconColor = Color(0xff5E5E6D);
  static const darkTextColor19 = Color(0xff136DAD);
  static const gradientColorContainer1 = Color(0xff0DA6C2);
  static const gradientColorContainer2 = Color(0xff0E39C6);


  static const wheelColor1 = Color(0xff58BAFF);
  static const wheelColor2 = Color(0xff7DFFC9);
  static const wheelColor3 = Color(0xffFFD25B);
  static const wheelColor4 = Color(0xffA479FF);
  static const wheelColor5 = Color(0xffFF74B7);
}
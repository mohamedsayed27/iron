import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_router/app_router.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/presentation/screens/account_info/account_info.dart';
import 'package:iron/presentation/screens/auth_screens/reset_password_screen.dart';
import 'package:iron/presentation/screens/auth_screens/sign_in_screen.dart';
import 'package:iron/presentation/screens/auth_screens/signup_or_signin_screen.dart';
import 'package:iron/presentation/screens/auth_screens/verification_code_screen.dart';
import 'package:iron/presentation/screens/cart_and_payment_screens/cart_screen.dart';
import 'package:iron/presentation/screens/cart_and_payment_screens/payment_methods_screen.dart';
import 'package:iron/presentation/screens/home_screen/home_screen.dart';
import 'package:iron/presentation/screens/intro_screens/splash_screen.dart';
import 'package:iron/presentation/screens/intro_screens/welcome_screen.dart';
import 'package:iron/presentation/screens/main_layout_screen/main_layout_screen.dart';
import 'package:iron/presentation/screens/orders_screen/track_your_order_screen.dart';
import 'package:iron/presentation/screens/products_screen/product_details_screen.dart';
import 'package:iron/presentation/screens/products_screen/products_screen.dart';
import 'package:iron/presentation/screens/profile_screen/profile_screen.dart';
import 'package:iron/try.dart';

import 'core/app_theme/app_theme.dart';
import 'presentation/screens/intro_screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context,child){
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          // onGenerateRoute: AppRouter.generateRoute,
          // initialRoute: ScreenName.splashScreen,
          home: TracKYourScreen(),
        );
      },
    );
  }
}

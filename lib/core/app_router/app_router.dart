import 'package:flutter/material.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/presentation/screens/auth_screens/create_accout_screen.dart';
import 'package:iron/presentation/screens/auth_screens/new_password_screen.dart';
import 'package:iron/presentation/screens/auth_screens/reset_password_screen.dart';
import 'package:iron/presentation/screens/auth_screens/sign_in_screen.dart';
import 'package:iron/presentation/screens/auth_screens/signup_or_signin_screen.dart';
import 'package:iron/presentation/screens/auth_screens/verification_code_screen.dart';
import 'package:iron/presentation/screens/cart_and_payment_screens/cart_screen.dart';
import 'package:iron/presentation/screens/intro_screens/onboarding_screen.dart';
import 'package:iron/presentation/screens/intro_screens/splash_screen.dart';
import 'package:iron/presentation/screens/intro_screens/welcome_screen.dart';

import '../../presentation/screens/cart_and_payment_screens/payment_methods_screen.dart';
import '../../presentation/screens/products_screen/product_details_screen.dart';
import '../../presentation/screens/products_screen/products_screen.dart';
import '../../presentation/screens/profile_screen/profile_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashScreen:
          return MaterialPageRoute(builder: (_) => const SplashScreen());
        case ScreenName.onboardingScreen:
          return MaterialPageRoute(builder: (_) => const OnboardingScreen());
        case ScreenName.welcomeScreen:
          return MaterialPageRoute(builder: (_) => const WelcomeScreen());
        case ScreenName.signUpOrSignInScreen:
          return MaterialPageRoute(builder: (_) => const SignUpOrSignInScreen());
        case ScreenName.loginScreen:
          return MaterialPageRoute(builder: (_) => const SignInScreen());
        case ScreenName.registerScreen:
          return MaterialPageRoute(builder: (_) => const CreateAccountScreen());
        case ScreenName.otpScreen:
          return MaterialPageRoute(builder: (_) => const VerificationScreen());
        case ScreenName.forgotPasswordScreen:
          return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
        case ScreenName.createNewPasswordScreen:
          return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
        case ScreenName.cartScreen:
          return MaterialPageRoute(builder: (_) => const CartScreen());
        case ScreenName.paymentMethodsScreen:
          return MaterialPageRoute(builder: (_) => const PaymentMethodsScreen());
        case ScreenName.productDetailsScreen:
          return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
        case ScreenName.productsScreen:
          return MaterialPageRoute(builder: (_) => const ProductsScreen());
        case ScreenName.profileScreen:
          return MaterialPageRoute(builder: (_) => const ProfileScreen());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error when routing to this screen'),
        ),
      );
    });
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: FadeTransition(
                opacity: Tween<double>(begin: 0.5, end: 1).animate(animation),
                child: child,
              ),
            );
          },
          transitionDuration: const Duration(milliseconds: 250),
          reverseTransitionDuration: const Duration(milliseconds: 250),
        );
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_router/screens_name.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/svg_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;

  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
          () {
        setState(() =>isLoading = true);
        _loading();
      },
    );
    super.initState();
  }

  _loading(){

    Timer(
      const Duration(seconds: 2),
          () {
        Navigator.pushReplacementNamed(context, ScreenName.welcomeScreen);
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: AnimatedOpacity(
          opacity: isLoading ? 1.0 : 0.0,
          duration: const Duration(
            seconds: 2,
          ),
          child: SvgPicture.asset(
            SvgPath.whiteLogo,
            width: 158.w,
            height: 74.h,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron/core/app_theme/custom_themes.dart';
import 'package:iron/presentation/screens/cart_and_payment_screens/cart_screen.dart';
import 'package:iron/presentation/screens/home_screen/home_screen.dart';

import '../../widgets/main_layout_widgets/bottom_nav_bar_widget.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    CartScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavBarWidget(
        changeCurrentIndex: (index){
          if(currentIndex!=index) {
            setState(() {
              currentIndex = index;
            });
          }

        },
        index: currentIndex,
      ),
    );
  }
}



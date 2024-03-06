import 'package:flutter/material.dart';
import 'package:iron/presentation/widgets/shared_widget/custom_app_bar.dart';

import '../../../core/constants/constants.dart';

class TracKYourScreen extends StatefulWidget {
  const TracKYourScreen({super.key});

  @override
  State<TracKYourScreen> createState() => _TracKYourScreenState();
}

class _TracKYourScreenState extends State<TracKYourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: CustomAppBar(
          title: "Track your order",
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}

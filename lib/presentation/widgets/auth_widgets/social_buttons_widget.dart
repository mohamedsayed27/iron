import 'package:flutter/material.dart';
import 'package:iron/presentation/widgets/auth_widgets/social_button_item.dart';

import '../../../core/assets_path/svg_path.dart';


class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialLoginButton(imagePath: SvgPath.mail,onPressed: (){},),
        SocialLoginButton(imagePath: SvgPath.google,onPressed: (){},),
        SocialLoginButton(imagePath: SvgPath.facebook,onPressed: (){},),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iron/core/app_theme/app_colors.dart';

import '../shared_widget/custom_text_form_field.dart';

class PhoneNumberFormField extends StatelessWidget {
  final TextEditingController? controller;
  const PhoneNumberFormField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      hintText: "Phone number",
    );
  }
}

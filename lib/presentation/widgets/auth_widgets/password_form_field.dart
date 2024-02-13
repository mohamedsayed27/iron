import 'package:flutter/material.dart';
import 'package:iron/core/app_theme/app_colors.dart';

import '../shared_widget/custom_text_form_field.dart';

class PasswordFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  const PasswordFormField({super.key, required this.hintText, this.controller});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      hintText: widget.hintText,
      isNotVisible: visible,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
        icon: visible==false
            ? const Icon(
                Icons.visibility,
                color: AppColors.primaryColor,
              )
            : const Icon(
                Icons.visibility_off,
                color: AppColors.greyColorC6,
              ),
      ),
    );
  }
}

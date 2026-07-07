import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Function validate;
  const CustomTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return validate(value);
      },
      controller: controller,
      style: AppStyles.hintText,
      cursorColor: AppColors.gold,
      decoration: AppStyles.buildInputDecoration(title),
    );
  }
}

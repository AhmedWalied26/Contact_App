import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  const CustomTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.hintText,
      cursorColor: AppColors.gold,
      decoration: AppStyles.buildInputDecoration(title),
    );
  }
}

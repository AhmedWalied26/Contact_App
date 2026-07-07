import 'package:contact_app/core/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle homeText = TextStyle(
    fontWeight: .w500,
    fontSize: 20,
    color: AppColors.gold,
  );
  static const TextStyle titleButtomSheet = TextStyle(
    fontWeight: .w500,
    fontSize: 16,
    color: AppColors.gold,
  );
  static const TextStyle hintText = TextStyle(
    fontWeight: .w400,
    fontSize: 16,
    color: AppColors.lightBlue,
  );
  static const TextStyle buttonText = TextStyle(
    fontWeight: .w400,
    fontSize: 20,
    color: AppColors.darkBlue,
  );
  static const TextStyle titleCard = TextStyle(
    fontWeight: .w500,
    fontSize: 14,
    color: AppColors.darkBlue,
  );
  static const TextStyle dataCard = TextStyle(
    fontWeight: .w500,
    fontSize: 10,
    color: AppColors.darkBlue,
  );
  static const TextStyle deleteText = TextStyle(
    fontWeight: .w500,
    fontSize: 10,
    color: AppColors.white,
  );

  static InputDecoration buildInputDecoration(String title) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      hintText: title,
      hintStyle: AppStyles.hintText,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.gold),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.gold),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.red),
      ),
    );
  }
}

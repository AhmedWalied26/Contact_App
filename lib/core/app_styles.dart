import 'package:contact_app/core/app_colors.dart';
import 'package:flutter/rendering.dart';

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
}

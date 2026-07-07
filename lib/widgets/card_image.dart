import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: .bottomStart,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: .circular(16),
            topRight: .circular(16),
          ),
          color: AppColors.gold,
          image: DecorationImage(
            fit: .cover,
            image: AssetImage(AppAssets.image1),
          ),
        ),
        child: Container(
          padding: .all(8),
          decoration: BoxDecoration(
            color: AppColors.gold,
            borderRadius: .circular(8),
          ),
          child: Text('Leo Messi', style: AppStyles.titleCard),
        ),
      ),
    );
  }
}

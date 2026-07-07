import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('User Name', style: AppStyles.titleButtomSheet),
          Divider(color: AppColors.gold, height: height * 0.03, endIndent: 30),
          Text('example@email.com', style: AppStyles.titleButtomSheet),
          Divider(color: AppColors.gold, height: height * 0.03, endIndent: 30),
          Text('+200000000000', style: AppStyles.titleButtomSheet),
        ],
      ),
    );
  }
}

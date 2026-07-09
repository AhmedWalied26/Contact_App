import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class InfoBottomSheet extends StatelessWidget {
  final String username;
  final String mail;
  final String phone;
  const InfoBottomSheet({
    super.key,
    required this.username,
    required this.mail,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(username, style: AppStyles.titleButtomSheet),
          Divider(color: AppColors.gold, height: height * 0.03, endIndent: 30),
          Text(mail, style: AppStyles.titleButtomSheet),
          Divider(color: AppColors.gold, height: height * 0.03, endIndent: 30),
          Text(phone, style: AppStyles.titleButtomSheet),
        ],
      ),
    );
  }
}

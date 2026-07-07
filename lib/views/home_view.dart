import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(AppAssets.route),
      ),
      backgroundColor: AppColors.darkBlue,
    );
  }
}

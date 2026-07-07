import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BodyNoContact extends StatelessWidget {
  const BodyNoContact({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: .center,
      children: [
        LottieBuilder.asset(AppAssets.animation, width: width * 0.8),
        LottieBuilder.asset(AppAssets.animation),
        SizedBox(height: height * 0.1),
        Text('There is No Contacts Added Here', style: AppStyles.homeText),
      ],
    );
  }
}

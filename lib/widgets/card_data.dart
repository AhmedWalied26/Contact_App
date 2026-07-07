import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 8,
              children: [
                Image.asset(AppAssets.mailIcon),
                Flexible(child: Text('leomessi@gmail.com')),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                Image.asset(AppAssets.phoneIcon),
                Text('+200000000000'),
              ],
            ),
            CustomButton(onTap: () {}, hasIcon: true),
          ],
        ),
      ),
    );
  }
}

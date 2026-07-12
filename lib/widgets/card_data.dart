import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/widgets/custom_button.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({super.key, required this.contact, required this.contacts});
  final ContactModel contact;
  final List<ContactModel> contacts;

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
                Flexible(child: Text(contact.mail)),
              ],
            ),
            Row(
              spacing: 8,
              children: [Image.asset(AppAssets.phoneIcon), Text(contact.phone)],
            ),
            CustomButton(onTap: () {}, hasIcon: true),
          ],
        ),
      ),
    );
  }
}

import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/card_data.dart';
import 'package:contact_app/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.contact,
    required this.contacts,
    required this.onDeleteTap,
  });
  final ContactModel contact;
  final List<ContactModel> contacts;
  final VoidCallback onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.gold,
      ),
      child: Column(
        children: [
          CardImage(contact: contact),
          const SizedBox(height: 17),
          CardData(
            onDeleteTap: () {
              onDeleteTap();
            },
            contact: contact,
            contacts: contacts,
          ),
        ],
      ),
    );
  }
}

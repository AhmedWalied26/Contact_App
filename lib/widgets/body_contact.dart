import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/card_grid_view.dart';
import 'package:flutter/material.dart';

class BodyContact extends StatelessWidget {
  const BodyContact({super.key, required this.contacts});

  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CardGridView(contacts: contacts),
    );
  }
}

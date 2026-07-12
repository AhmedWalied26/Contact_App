import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/widgets/custom_floating_action_button.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/body_contact.dart';
import 'package:contact_app/widgets/body_no_contact.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  final List<ContactModel> contacts = [];

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(AppAssets.route),
      ),
      backgroundColor: AppColors.darkBlue,
      body: widget.contacts.isEmpty
          ? BodyNoContact()
          : BodyContact(contacts: widget.contacts),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        spacing: 8,
        children: [
          widget.contacts.isEmpty
              ? SizedBox()
              : CustomFloatingActionButton(
                  onAddContact: (contact) {},
                  onRemoveLast: () {
                    widget.contacts.removeLast();
                    setState(() {});
                  },
                  isAddButton: false,
                ),
          CustomFloatingActionButton(
            onAddContact: (contact) {
              widget.contacts.add(contact);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/widgets/add_contact_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.gold,
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: AppColors.darkBlue,
          context: context,
          builder: (context) {
            return AddContactBottomSheet();
          },
        );
      },
      child: Icon(Icons.add, color: AppColors.darkBlue, size: 28),
    );
  }
}

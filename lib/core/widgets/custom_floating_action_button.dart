import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/add_contact_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final bool isAddButton;
  final Function(ContactModel) onAddContact;
  final VoidCallback? onRemoveLast;

  const CustomFloatingActionButton({
    super.key,
    this.isAddButton = true,
    required this.onAddContact,
    this.onRemoveLast,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: isAddButton ? AppColors.gold : AppColors.red,
      onPressed: () {
        isAddButton
            ? showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: AppColors.darkBlue,
                context: context,
                builder: (context) {
                  return AddContactBottomSheet(onAddContact: onAddContact);
                },
              )
            : onRemoveLast?.call();
      },
      child: isAddButton
          ? Icon(Icons.add, color: AppColors.darkBlue, size: 28)
          : ImageIcon(
              AssetImage(AppAssets.trashIconFloating),
              color: AppColors.white,
            ),
    );
  }
}

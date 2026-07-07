import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final bool hasIcon;
  const CustomButton({super.key, required this.onTap, required this.hasIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: hasIcon
            ? .symmetric(vertical: 9)
            : const EdgeInsets.symmetric(vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: hasIcon ? .circular(8) : BorderRadius.circular(16),
        ),
        backgroundColor: hasIcon ? AppColors.red : AppColors.gold,
      ),
      onPressed: () {
        onTap();
      },
      child: hasIcon
          ? Row(
              spacing: 8,
              mainAxisAlignment: .center,
              children: [
                Image.asset(AppAssets.trashIcon),
                Text('Delete', style: AppStyles.deleteText),
              ],
            )
          : Text('Add Contact', style: AppStyles.buttonText),
    );
  }
}

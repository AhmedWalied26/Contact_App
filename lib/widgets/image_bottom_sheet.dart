import 'dart:io';

import 'package:contact_app/core/app_assets.dart';
import 'package:contact_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImageBottomSheet extends StatelessWidget {
  final Function onTap;
  final File? image;
  const ImageBottomSheet({super.key, required this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 148,
        width: width * .33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.gold),
        ),
        child: image == null
            ? Lottie.asset(AppAssets.imagePicker)
            : ClipRRect(
                borderRadius: .circular(28),
                child: Image.file(image!, fit: .cover),
              ),
      ),
    );
  }
}

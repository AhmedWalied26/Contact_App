import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/widgets/custom_button.dart';
import 'package:contact_app/core/widgets/custom_text_field.dart';
import 'package:contact_app/widgets/card_image.dart';
import 'package:contact_app/widgets/info_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddContactBottomSheet extends StatelessWidget {
  const AddContactBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: .only(bottom: MediaQuery.of(context).viewInsets.bottom),
      padding: .all(height * 0.018),
      height: height * 0.51,
      decoration: BoxDecoration(
        borderRadius: .circular(40),
        color: AppColors.darkBlue,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Row(
              children: [
                CardImage(),
                SizedBox(width: width * 0.02),
                InfoBottomSheet(),
              ],
            ),
            SizedBox(height: height * 0.02),
            Form(
              child: Column(
                spacing: 10,
                children: [
                  CustomTextField(title: 'Enter User Name'),
                  CustomTextField(title: 'Enter Email'),
                  CustomTextField(title: 'Enter Phone'),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/widgets/custom_button.dart';
import 'package:contact_app/widgets/card_image.dart';
import 'package:contact_app/widgets/form_bottom_sheet.dart';
import 'package:contact_app/widgets/info_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddContactBottomSheet extends StatefulWidget {
  const AddContactBottomSheet({super.key});

  @override
  State<AddContactBottomSheet> createState() => _AddContactBottomSheetState();
}

class _AddContactBottomSheetState extends State<AddContactBottomSheet> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
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
            FormBottomSheet(
              formKey: _formkey,
              userNameController: userNameController,
              phoneController: phoneController,
              emailController: emailController,
            ),
            SizedBox(height: height * 0.02),
            CustomButton(
              onTap: () {
                if (_formkey.currentState!.validate()) {}
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

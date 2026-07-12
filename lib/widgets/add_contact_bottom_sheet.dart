import 'dart:io';

import 'package:contact_app/core/app_colors.dart';
import 'package:contact_app/core/widgets/custom_button.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/image_bottom_sheet.dart';
import 'package:contact_app/widgets/form_bottom_sheet.dart';
import 'package:contact_app/widgets/info_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddContactBottomSheet extends StatefulWidget {
  final Function onAddContact;
  const AddContactBottomSheet({super.key, required this.onAddContact});

  @override
  State<AddContactBottomSheet> createState() => _AddContactBottomSheetState();
}

class _AddContactBottomSheetState extends State<AddContactBottomSheet> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    userNameController.addListener(() {
      setState(() {});
    });
    emailController.addListener(() {
      setState(() {});
    });
    phoneController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  File? selectedImage;

  final picker = ImagePicker();
  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .only(bottom: MediaQuery.of(context).viewInsets.bottom),
      padding: .all(18),
      height: 500,
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
                ImageBottomSheet(onTap: pickImage, image: selectedImage),
                const SizedBox(width: 18),
                InfoBottomSheet(
                  username: userNameController.text.isEmpty
                      ? 'User Name'
                      : userNameController.text,
                  mail: emailController.text.isEmpty
                      ? 'example@email.com'
                      : emailController.text,
                  phone: phoneController.text.isEmpty
                      ? '+200000000000'
                      : phoneController.text,
                ),
              ],
            ),
            const SizedBox(height: 20),
            FormBottomSheet(
              formKey: _formkey,
              userNameController: userNameController,
              phoneController: phoneController,
              emailController: emailController,
            ),
            const SizedBox(height: 20),
            CustomButton(
              hasIcon: false,
              onTap: () {
                if (_formkey.currentState!.validate() &&
                    selectedImage != null) {
                  ContactModel contact = ContactModel(
                    image: selectedImage!,
                    userName: userNameController.text,
                    mail: emailController.text,
                    phone: phoneController.text,
                  );
                  widget.onAddContact(contact);
                  Navigator.pop(context);
                }
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

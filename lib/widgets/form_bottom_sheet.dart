import 'package:contact_app/core/app_validation.dart';
import 'package:contact_app/widgets/custom_text_field.dart';
import 'package:flutter/widgets.dart';

class FormBottomSheet extends StatelessWidget {
  const FormBottomSheet({
    super.key,
    required this._formKey,
    required this.userNameController,
    required this.emailController,
    required this.phoneController,
  });

  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
        children: [
          CustomTextField(
            title: 'Enter User Name',
            controller: userNameController,
            validate: AppValidation.userValidation,
          ),
          CustomTextField(
            title: 'Enter Email',
            controller: emailController,
            validate: AppValidation.emailValidation,
          ),
          CustomTextField(
            title: 'Enter Phone',
            controller: phoneController,
            validate: AppValidation.phoneNumberValidation,
          ),
        ],
      ),
    );
  }
}

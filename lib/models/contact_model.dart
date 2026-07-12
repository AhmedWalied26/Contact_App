import 'dart:io';

class ContactModel {
  final File image;
  final String userName;
  final String mail;
  final String phone;

  const ContactModel({
    required this.image,
    required this.userName,
    required this.mail,
    required this.phone,
  });
}
